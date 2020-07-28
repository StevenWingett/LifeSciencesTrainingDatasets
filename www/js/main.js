// Be good an use strict mode
'use-strict';


// Set up the datasets when we first load the page
let loadDatasets = function () {
    // Get the JSON index file

    $.get("datasets.json",function(response){

        let datasets = $("#datasets");

        let tagCounts = {};

        for (var i=0;i<response.length;i++) {
            console.log("Found dataset "+response[i]["title"]);
            let tags = response[i]["tags"].split(",");

            for (var j=0;j<tags.length;j++) {
                if (tags[j] in tagCounts) {
                    tagCounts[tags[j]] += 1;
                }
                else {
                    tagCounts[tags[j]] = 1;
                }
            }
            datasets.append('<div class="summary" data-url="notebooks/'+response[i]["file"]+'"><h1>'+response[i]["title"]+'</h1><p>'+response[i].summary+'</p><p class="tags">'+response[i]["tags"]+'</p></div>');
        }

        // Add the tags and their respective counts to the filters section
        let filter = $("#filterlist");

        for (var tag in tagCounts) {
            filter.append("<li>"+tag+"("+tagCounts[tag]+")</li>");
        }

        // Now set the events for when someone clicks on an ngs tag
        $("#filterlist li").click(function () {
            $(this).toggleClass("selected");
            updateFilters();
        })

        // Set the events if someone clicks on a dataset
        $(".summary").click(function() {
            showdataset($(this).data("url"));
        })

    })
}


// This is called when someone clicks on a dataset summary
// and we need to load it into the main iframe
let showdataset = function (url) {

    $("#initialdataset").hide();

    var datasetTarget = $("#datasettarget");

    datasetTarget.show();
    datasetTarget.attr("src",url);

}


// This is called any time a tag is changed so we can update
// the set of datasets which are shown
let updateFilters = function () {

    // See if we have a text search value
    var textValue = $("#textsearch").val().toLowerCase();

    tagList = [];
    $("#filterlist li.selected").each(function() {  
        tagList.push($(this).text().replace(/\(.*/,""));
    })

    console.log("Selected tags are "+tagList+ "search text is "+textValue);

    // Now we need to go through the datasets and collect all of
    // the tags there.  We can then check them against the selected
    // ones to show which ones match.

    $("div.summary").each(function() {

        // If there aren't any filters, we just show everything
        if (tagList.length == 0 && textValue.length == 0) {
            $(this).show();
        }

        else {
            let theseTags = $(this).find("p.tags").text().split(",");

            var failedTag = false;

            // Check the text search first
            if (textValue.length > 0) {
                if (!$(this).text().toLowerCase().includes(textValue)) {
                    failedTag = true;
                }
            }

            for (var i=0;i<tagList.length;i++) {
                tag = tagList[i];
                if (theseTags.indexOf(tag)<0) {
                    failedTag = true;
                    break;
                }
                else {
                    console.log("Found "+tag+" in "+theseTags);
                }
            }

            if (failedTag) {
                $(this).hide();
            }
            else {
                $(this).show();
            }
        }
    })


}





// Main JQuery load point
$(document).ready(function () {

    loadDatasets();

    $("#showhelp").click(function() {
        $("#helpcontent").slideToggle();
    })

    $("#textsearch").change(function () {
        console.log("Changed");
        updateFilters();
    })


    // See if there is a dataset specified in the 
    // GET string which we should show initially.
    // It should be specified with ?v=[dataset_name]
    initialURL = window.location.search.substring(1)

    if (initialURL.substring(0,2) == "v=") {
        initialURL = initialURL.substring(2)
        initialURL = "notebooks/"+initialURL;
        showdataset(initialURL)
    }


})
function loadingTemplate() {
    var parsedTemplate = createLoadingDocument('Loading');
    navigationDocument.pushDocument(parsedTemplate);
}

function createLoadingDocument(title) {
    var template = '<?xml version="1.0" encoding="UTF-8" ?><document><loadingTemplate><activityIndicator><text>'+title+'</text></activityIndicator></loadingTemplate></document>';
    var templateParser = new DOMParser();
    return templateParser.parseFromString(template, 'application/xml');
}

function getDocument(extension) {
    var templateXHR = new XMLHttpRequest();
    var url = baseURL + extension;

    loadingTemplate();
    templateXHR.responseType = "document";
    templateXHR.addEventListener("load", function() { pushPage(templateXHR.responseXML); }, false);
    templateXHR.open("GET", url, true);
    templateXHR.send();
}

function pushPage(document) {
    var currentDoc = getActiveDocument();
    if (currentDoc.getElementsByTagName("loadingTemplate").item(0) == null) {
        navigationDocument.pushDocument(document);
    } else {
        navigationDocument.replaceDocument(document, currentDoc);
    }
}

function playMedia(videourl, mediaType) {
    var singleVideo = new MediaItem(mediaType, videourl);
    var videoList = new Playlist();
    videoList.push(singleVideo);
    var myPlayer = new Player();
    myPlayer.playlist = videoList;
    myPlayer.play();
}

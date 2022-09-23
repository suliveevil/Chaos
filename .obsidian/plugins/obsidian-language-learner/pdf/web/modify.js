// window.addEventListener('message', (e) => {
//     console.log('iframe=' + e.data);
// }, false);

window.addEventListener("mouseup", (e) => {
    let selection = window.getSelection().toString()
    if (selection && (e.ctrlKey || e.altKey || e.metaKey)) {
        window.parent.postMessage({ type: "search", selection }, "*")
    }
})
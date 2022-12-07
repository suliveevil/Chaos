// Created by the_tree
// window.addEventListener('message', (e) => {
//     console.log('iframe=' + e.data);
// }, false);

window.addEventListener("pointerup", (e) => {
    let selection = window.getSelection().toString();
    let funcKey = e.ctrlKey ? "ctrl" :
        e.altKey ? "alt" :
            e.metaKey ? "meta" : "";
    if (selection) {
        window.parent.postMessage({ type: "search", selection, funcKey }, "*");
    }
});
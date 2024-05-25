# All of the Node.js APIs are available in the preload process.
# It has the same sandbox as a Chrome extension.
window.addEventListener "DOMContentLoaded", ->
  replaceText = (selector, text) ->
    element = document.getElementById selector
    element.innerText = text if element

  for type in ["chrome", "node", "electron"]
    replaceText "#{type}-version", process.versions[type]
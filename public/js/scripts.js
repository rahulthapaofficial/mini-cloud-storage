const mcsQuery = document.querySelector.bind(document);

document.querySelector("#newBtn").addEventListener("click", function () {
  document.getElementById("myDropdown").classList.toggle("show");
});

document.querySelector("#profileMenu").addEventListener("click", function () {
  document.getElementById("profileMenuDropdown").classList.toggle("show");
});

// Create Folder Modal JS Starts from here
var createFolderModal = document.querySelector("#createFolderModal");
var createFolderBtn = document.querySelector("#createFolderBtn");
var createFolderModalCloseBtn = document.querySelector(
  "#createFolderModalCloseBtn"
);

createFolderBtn.onclick = function () {
  setTimeout(() => {
    mcsQuery("#createFolderName").select();
  }, (createFolderModal.style.display = "block"));
};

createFolderModalCloseBtn.onclick = function () {
  createFolderModal.style.display = "none";
};

// Upload File Modal JS Starts from here
var fileUploadModal = document.querySelector("#fileUploadModal");
var fileUploadBtn = document.querySelector("#fileUploadBtn");
var fileUploadModalCloseBtn = document.querySelector(
  "#fileUploadModalCloseBtn"
);

fileUploadBtn.onclick = function () {
  fileUploadModal.style.display = "block";
};

fileUploadModalCloseBtn.onclick = function () {
  fileUploadModal.style.display = "none";
};

// Upload Folder Modal JS Starts from here
var folderUploadModal = document.querySelector("#folderUploadModal");
var folderUploadBtn = document.querySelector("#folderUploadBtn");
var folderUploadModalCloseBtn = document.querySelector(
  "#folderUploadModalCloseBtn"
);

folderUploadBtn.onclick = function () {
  folderUploadModal.style.display = "block";
};

folderUploadModalCloseBtn.onclick = function () {
  folderUploadModal.style.display = "none";
};

window.onclick = function (event) {
  let targetId = event.target.id,
    modals = ["createFolderModal", "fileUploadModal", "folderUploadModal"];
  if (modals.includes(targetId)) {
    hideModal(targetId);
  }
};

hideModal = (modalId) => (window[modalId].style.display = "none");

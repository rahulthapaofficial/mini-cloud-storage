   <div id="footer">
       Copyright &copy; 2020 - <?php echo date('Y') ?> <a href="http://localhost/mini-cloud-storage/">Mini-Cloud Storage</a>.
   </div>
   <script>
       document.querySelector("#newBtn").addEventListener('click', function() {
           document.getElementById("myDropdown").classList.toggle("show");
       });

       var modal = document.querySelector("#createFolderModal");
       var btn = document.querySelector("#createFolderBtn");
       var span = document.querySelector(".close");

       btn.onclick = function() {
           modal.style.display = "block"
       }
       span.onclick = function() {
           modal.style.display = "none"
       }

       window.onclick = function(event) {
           if (event.target == modal)
               modal.style.display = "none"
       }
   </script>
   </body>

   </html>
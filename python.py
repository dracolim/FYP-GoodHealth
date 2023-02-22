import os
import shutil


# <link href="../node_modules/tabulator-tables/dist/css/tabulator_semanticui.css" rel="stylesheet">
#     <script type="text/javascript" src="../node_modules/tabulator-tables/dist/js/tabulator.js"></script>


# os.rename("node_modules/tabulator-tables/dist/css/tabulator_semanticui.css", "path/to/new/destination/for/file.foo")
# os.replace("path/to/current/file.foo", "path/to/new/destination/for/file.foo")
# shutil.move("path/to/current/file.foo", "path/to/new/destination/for/file.foo")

# shutil.copyfile("./node_modules/tabulator-tables/dist/css/tabulator_semanticui.css", "/Users/maarunipandithurai/Documents/maars202/FYP-GoodHealth/backend/static/tabulator_semanticui.css")
# "../node_modules/tabulator-tables/dist/js/tabulator.js"
shutil.copyfile("./node_modules/tabulator-tables/dist/js/tabulator.js", "/Users/maarunipandithurai/Documents/maars202/FYP-GoodHealth/backend/static/tabulator.js")
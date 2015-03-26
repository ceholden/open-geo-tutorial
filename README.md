Open Source Geoprocessing Tutorial
=================

Tutorial of basic remote sensing and GIS methodologies using open source software (GDAL in Python). Tutorial covers workflow to perform image classification using machine learning classifiers:

0. Introduction [[Python](http://nbviewer.ipython.org/github/ceholden/open-geo-tutorial/blob/master/Python/chapters/chapter_0_introduction.ipynb)] [[R](http://rpubs.com/ceholden/open-geo-tutorial_chp0)]
1. The GDAL datatypes and objects [[Python](http://nbviewer.ipython.org/github/ceholden/open-geo-tutorial/blob/master/Python/chapters/chapter_1_GDALDataset.ipynb)] [[R](http://rpubs.com/ceholden/open-geo-tutorial_chp1)]
2. Your first vegetation index [[Python](http://nbviewer.ipython.org/github/ceholden/open-geo-tutorial/blob/master/Python/chapters/chapter_2_indices.ipynb)] [[R](http://rpubs.com/ceholden/open-geo-tutorial_chp2)]
3. Visualizing data [[Python](http://nbviewer.ipython.org/github/ceholden/open-geo-tutorial/blob/master/Python/chapters/chapter_3_visualization.ipynb)] [[R](http://rpubs.com/ceholden/open-geo-tutorial_chp3)]
4. Vector data - the OGR library [[Python](http://nbviewer.ipython.org/github/ceholden/open-geo-tutorial/blob/master/Python/chapters/chapter_4_vector.ipynb)] [[R](http://rpubs.com/ceholden/open-geo-tutorial_chp4)]
5. Land cover classification [[Python](http://nbviewer.ipython.org/github/ceholden/open-geo-tutorial/blob/master/Python/chapters/chapter_5_classification.ipynb)] [[R](http://rpubs.com/ceholden/open-geo-tutorial_chp5)]
6. The spatial dimension - filters and segmentation [[Python](http://nbviewer.ipython.org/github/ceholden/open-geo-tutorial/blob/master/Python/chapters/chapter_6_spatial.ipynb)]


## Access
#### Viewing IPython Notebook chapters
You can view these IPython notebooks as HTML pages by viewing them locally by opening the outputs in the `build` folder, or by accessing the IPython notebooks via a web viewer at [here](http://nbviewer.ipython.org/github/ceholden/open-geo-tutorial/tree/master/Python/chapters), or the chapter links shown above.


#### Running IPython Notebook chapters
You can, of course, download this repository and run the IPython notebooks yourself. The added benefit to this is that you can interact with them.

For users who don't have the software environment required, the people behind the [Wakari](www.wakari.io) serivce - [Continuum Analytics](http://continuum.io/) - have a [free tier (limited CPU and space compared to paid plans)](https://wakari.io/plans) which will host IPython Notebooks over the web on their servers. These IPython Notebook environments contain all the third party libraries we will use, including GDAL, NumPy, and scikit-learn.

I've included a few special instructions for Wakari users (see Chapter 5), but the workflow for running the notebooks on Wakari is as follows:

+ Sign up for an account
+ Log in to your new account
+ Open up a Shell terminal session
+ Clone this repository using `git clone https://github.com/ceholden/open-geo-tutorial.git`
+ Open up your IPython Notebook window and navigate to the "open-geo-tutorial/chapters" folder
+ Click on any notebook to run the chapter
+ Pay attention to sections which mention Wakari -- especially Chapter 5 for the PATH changes

## Requirements

Python package requirements are listed in `requirements.txt`.

You will need to have GDAL installed for Python to build the drivers against. You may have the Python bindings already built as part of GDAL's installation process.

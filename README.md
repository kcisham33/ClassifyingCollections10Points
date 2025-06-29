# ClassifyingCollections10Points

The main document is Superfiguration_Analysis.ipynb. This is a document written in SageMath 9.6 and hosted on Jupyter Notebook. 

The folder EllipticCurves includes supplementary code written in Magma. Each file is labelled with its superfiguration index, then its component index.

In Superfiguration_Analysis.ipynb, we produce a list of superfigurations on at most 10 points, then determine geometric and algebraic information about their corresponding incidence varieties as described by Computation 3.2 in our paper. See the .ipynb file for a more detailed discussion of the code.

The file allLinearSpaces.sobj contains a list of all linear spaces on at most 10 points. The file AllSuperfigs.sobj contains a list of all superfigurations on at most 10 points, though in a different order and with a different labeling than the one presented in our paper. These two .sobj files are used to create the list of all superfigurations with a labelling that makes it easy to assign the framed map to each superfiguration.


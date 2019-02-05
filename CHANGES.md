# Meshroom Changelog

For algorithmic changes related to the photogrammetric pipeline, 
please refer to [AliceVision changelog](https://github.com/alicevision/AliceVision/blob/develop/CHANGES.md).

## Release 2019.1.0 (2019.02.06)

Based on [AliceVision 2.1.0](https://github.com/alicevision/AliceVision/tree/v2.1.0).

Release Notes Summary:
 - 3D Viewer: Load and compare multiple assets with cache mechanism and improved navigation
 - Display camera intrinsic information extracted from metadata analysis
 - Easier access to a more complete sensor database with a more reliable camera model matching algorithm.
 - Attribute Editor: Hide advanced/experimental parameters by default to improve readability and simplify access to the most useful, high-level settings.  Advanced users can still enable them to have full access to internal thresholds.
 - Graph Editor: Improved set of contextual tools with `duplicate`/`remove`/`delete data` actions with `From Here` option.
- Nodes: Homogenization of inputs / outputs parameters
 - Meshing: Better, faster and configurable estimation of the space to reconstruct based on the sparse point cloud (new option `estimateSpaceFromSfM`). Favors high-density areas and helps removing badly defined ones.
 - Draft Meshing (no CUDA required): the result of the sparse reconstruction can now be directly meshed to get a 3D model preview without computing the depth maps.
 - MeshFiltering: Now keeps all reconstructed parts by default.
 - StructureFromMotion: Add support for rig of cameras
 - Support for reconstruction with projected light patterns and texturing with another set of images

Full Release Notes:
 - Viewer3D: New Trackball camera manipulator for improved navigation in the scene
 - Viewer3D: New library system to load multiple 3D objects of the same type simultaneously, simplifying results comparisons
 - Viewer3D: Add media loading overlay with BusyIndicator
 - Viewer3D: Points and cameras size are now configurable via dedicated sliders.
 - CameraInit: Add option to lock specific cameras intrinsics (if you have high-quality internal calibration information)
 - StructureFromMotion: Triangulate points if the input scene contains valid camera poses and intrinsics without landmarks
 - PrepareDenseScene: New `imagesFolders` option to override input images. This enables to use images with light patterns projected for SfM and MVS parts and do the Texturing with another set of images.
 - NodeLog: Cross-platform monospace display
 - Remove `CameraConnection` and `ExportUndistortedImages` nodes
 - Multi-machine parallelization of `PrepareDenseScene`
 - Meshing: Add option `estimateSpaceFromSfM` and observation angles check to better estimate the bounding box of the reconstruction and avoid useless reconstruction of the environment
 - Console: Filter non silenced, inoffensive warnings from QML + log Qt messages via Python logging
 - Command line (meshroom_photogrammetry): Add --pipeline parameter to use a pre-configured pipeline graph
- Command line (meshroom_photogrammetry): Add possibility to provide pre-calibrated intrinsics.
- Image Gallery: Display Camera Intrinsics initialization status with detailed explanation, edit Sensor Database dialog, advanced menu to display view UIDs
- StructureFromMotion: Expose advanced estimator parameters
- FeatureMatching: Expose advanced estimator parameters
- DepthMap: New option `exportIntermediateResults` disabled by default, so less data storage by default than before.
- DepthMap: Use multiple GPUs by default if available and add `nbGPUs` param to limit it
- Meshing: Add option `addLandmarksToTheDensePointCloud`
- SfMTransform: New option to align on one specific camera
- Graph Editor: Consistent read-only mode when computing, that can be unlocked in advanced settings
- Graph Editor: Improved Node Menu: "duplicate"/"remove"/"delete data" with "From Here" accessible on the same entry via an additional button
- Graph Editor: Confirmation popup before deleting node data
- Graph Editor: Add "Clear Pending Status" action at Graph level
- Graph Editor: Solo media in 3D viewer with Ctrl + double click on node/attribute
- Param Editor: Fix several bugs related to attributes edition
- Scene Compatibility: Improves detection of deeper compatibility issues, by adding an additional recursive (taking List/GroupAttributes children into account) exact description matching test when de-serializing a Node.

See [AliceVision 2.1.0 Release Notes](https://github.com/alicevision/AliceVision/blob/v2.1.0/CHANGES.md)
for more details about algorithmic changes.


## Release 2018.1.0 (2018.08.09)

 First release of Meshroom.  
 Based on [AliceVision 2.0.0](https://github.com/alicevision/AliceVision/tree/v2.0.0).

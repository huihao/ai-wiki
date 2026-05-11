---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Bounding Box

## Definition
A bounding box is a rectangular region defined by coordinates (x_min, y_min, x_max, y_max) or (x, y, width, height) that encloses an object of interest in an image, serving as the fundamental output format for object detection models. Bounding boxes provide spatial localization -- telling not just what is in an image but where it is, enabling applications from autonomous driving to medical imaging.

## Key Aspects
- **Coordinate formats**: Two common representations -- corner-based (x_min, y_min, x_max, y_max) and center-based (center_x, center_y, width, height); conversion between formats is a frequent source of bugs
- **IoU (Intersection over Union)**: The standard metric for evaluating bounding box accuracy; IoU = area of overlap / area of union between predicted and ground truth boxes; threshold typically 0.5 for a "correct" detection
- **Anchor boxes**: Pre-defined box templates at various scales and aspect ratios that detection models (YOLO, Faster R-CNN) use as starting points for regression
- **Non-maximum suppression (NMS)**: Post-processing step that removes duplicate detections by keeping the highest-confidence box and suppressing overlapping boxes above an IoU threshold
- **Tight vs. loose**: Ground truth boxes should be tight (minimal background); predicted boxes may be loose, requiring regression to refine coordinates
- **Multi-class detection**: Each bounding box is associated with a class label and confidence score; the full output is a set of (box, class, score) tuples

## Related Concepts
- [[object-detection]] -- the task that produces bounding boxes
- [[non-maximum-suppression]] -- post-processing for bounding box deduplication
- [[intersection-over-union]] -- the evaluation metric for bounding box quality

## Sources
- [[object-detection]]

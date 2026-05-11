---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# OpenCV API Concepts

## Metadata

- **Date**: 2026-04-27
- **URL**: https://docs.opencv.org/4.x/d1/dfb/intro.html
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/API Concepts.md
- **Version**: OpenCV 4.14.0-pre

## Summary

Official OpenCV documentation introducing fundamental API concepts for the Open Source Computer Vision Library. Covers C++ API structure, memory management, data types, saturation arithmetic, and the InputArray/OutputArray system.

## Key Takeaways

- OpenCV 2.x API is C++ based (C API deprecated since OpenCV 2.4)
- Modular structure with shared/static libraries
- All classes/functions in `cv` namespace
- Automatic memory management with reference counting
- cv::Mat uses destructors that consider data sharing
- cv::Ptr template similar to std::shared_ptr for user types
- Automatic output array allocation based on input properties
- Saturation arithmetic prevents visual artifacts (e.g., 8-bit images)
- Limited fixed set of primitive data types for runtime dispatch
- InputArray/OutputArray proxies enable flexible API design
- Exception handling via cv::Exception (derived from std::exception)
- Fully re-enterable: thread-safe with atomic reference counting

## Entities Mentioned

- [[opencv|OpenCV]] — Open Source Computer Vision Library

## Concepts Mentioned

- [[computer-vision-library|Computer Vision Library]] — Category of software libraries
- [[memory-management|Memory Management]] — Automatic allocation/deallocation
- [[saturation-arithmetic|Saturation Arithmetic]] — Preventing overflow artifacts

## Raw Notes

Technical documentation explaining C++ API design choices. Key architectural principles:
- Polymorphism over templates for cross-language compatibility (Python, Java, Matlab)
- Templates used only where runtime dispatch is too slow or impossible
- Fixed primitive types: 8-bit/16-bit/32-bit integers and 32-bit/64-bit floats
- Multi-channel types: CV_8UC1, CV_8UC2, etc. (up to CV_CN_MAX channels)
- cv::Mat::create method central to automatic allocation
- Saturation arithmetic uses cv::saturate_cast<> and SIMD instructions (SSE2)

Example exceptions: cv::mixChannels and cv::RNG::fill require manual allocation.

## Questions / Follow-ups

- Migration strategies from C API to C++ API?
- Performance comparison between template-based and polymorphic approaches?
- Integration patterns with modern C++ frameworks?
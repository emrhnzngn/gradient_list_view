# gradient_list_view

[![pub package](https://img.shields.io/pub/v/gradient_list_view.svg)](https://pub.dev/packages/gradient_list_view)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

`gradient_list_view` is a Flutter package that provides a simple yet effective way to add a gradient fade effect to the top and bottom of any scrollable widget. This creates a visually pleasing effect where content appears to blend seamlessly into the background, especially useful for long lists or scrollable areas.

## Features

-   **Easy Integration**: Wrap any scrollable widget (`ListView`, `GridView`, `SingleChildScrollView`, etc.) with `GradientListView`.
-   **Customizable Gradients**: Full control over gradient colors, stops, begin/end alignments, and even fixed height.
-   **Non-blocking**: The gradient overlay does not block pointer events, allowing users to interact with the underlying list items.

## Installation

Add this to your `pubspec.yaml` file:

```yaml
dependencies:
  gradient_list_view: ^0.1.0 # Latest version
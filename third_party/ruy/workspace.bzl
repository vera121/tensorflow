"""Loads the ruy library, used by TensorFlow Lite."""

load("//third_party:repo.bzl", "tf_http_archive")

def repo():
    tf_http_archive(
        name = "ruy",
        sha256 = "4d2644cf1d4c1e4ae5e7d370a0da1c39c1c6b70608f95a22e6ea87e56c2be4fc",
        strip_prefix = "ruy-23bf790cb3b3da050d7ddee5c067324d5bf47db9",
        urls = [
            "https://storage.googleapis.com/mirror.tensorflow.org/github.com/google/ruy/archive/54774a7a2cf85963777289193629d4bd42de4a59.zip",
            "https://github.com/vera121/ruy/archive/23bf790cb3b3da050d7ddee5c067324d5bf47db9.zip"
        ],
        build_file = "//third_party/ruy:BUILD",
    )

"""Loads the ruy library, used by TensorFlow Lite."""

load("//third_party:repo.bzl", "tf_http_archive")

def repo():
    tf_http_archive(
        name = "ruy",
        sha256 = "31631e7f5a8f30e7f2b4bde6a99c5a0fb60342cb43edd4252b5de692a6b3f3e5",
        strip_prefix = "ruy-2197bc8dfb575c3a6a9a12cd4175e5225310409e",
        urls = [
            "https://storage.googleapis.com/mirror.tensorflow.org/github.com/google/ruy/archive/54774a7a2cf85963777289193629d4bd42de4a59.zip",
            "https://github.com/vera121/ruy/archive/2197bc8dfb575c3a6a9a12cd4175e5225310409e.zip"
        ],
        build_file = "//third_party/ruy:BUILD",
    )

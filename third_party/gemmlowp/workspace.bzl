"""Provides the repository macro to import gemmlowp."""

load("//third_party:repo.bzl", "tf_http_archive")

def repo():
    """Imports gemmlowp."""

    # Attention: tools parse and update these lines.
    GEMMLOWP_COMMIT = "eeb8bc95c84ba05bc99ac692512597c6b994463f"
    GEMMLOWP_SHA256 = "b03326fd0885b20106b17fd63d38d2a060cdfeef4c405dbf4c763030dca00b5b"

    tf_http_archive(
        name = "gemmlowp",
        sha256 = GEMMLOWP_SHA256,
        strip_prefix = "gemmlowp-{commit}".format(commit = GEMMLOWP_COMMIT),
        urls = [
            "https://storage.googleapis.com/mirror.tensorflow.org/github.com/google/gemmlowp/archive/{commit}.zip".format(commit = GEMMLOWP_COMMIT),
            "https://github.com/vera121/gemmlowp/archive/{commit}.zip".format(commit = GEMMLOWP_COMMIT),
        ],
    )

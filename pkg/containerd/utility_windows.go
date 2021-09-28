// +build windows

package containerd

import (
	"github.com/pkg/errors"
)

func OverlaySupported(root string) error {
	return errors.Wrapf("ErrUnsupportedPlatform", "overlayfs is not supported")
}

func FuseoverlayfsSupported(root string) error {
	return errors.Wrapf("ErrUnsupportedPlatform", "fuse-overlayfs is not supported")
}

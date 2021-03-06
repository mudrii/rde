# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [
      # <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "uhci_hcd" "ehci_pci" "ata_piix" "ahci" "pata_jmicron" "xhci_pci" "pata_marvell" "usbhid" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/5a794bf2-afdc-45f0-af9b-395883e43728";
      fsType = "ext4";
    };

  boot.initrd.luks.devices."root".device = "/dev/disk/by-uuid/1ae69e3f-f286-4068-a5be-8fb92884ba53";

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/3d03c93a-94e5-46ec-8c73-a45e955829a5";
      fsType = "ext2";
    };

  swapDevices = [ ];

  nix.maxJobs = lib.mkDefault 24;
}

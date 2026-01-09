class SudoTouchid < Formula
  desc "Permanent TouchID support for sudo"
  homepage "https://github.com/artginzburg/sudo-touchid"
  url "https://github.com/artginzburg/sudo-touchid/releases/download/0.5/sudo-touchid.sh"
  sha256 "838fd7f51204885430ec05849962cfb3be32e6436b73f32cc53db80aa29123df"
  license "EPL-2.0"
  head "https://github.com/artginzburg/sudo-touchid.git", branch: "main"

  # Restrict to macOS since TouchID is macOS-specific
  depends_on :macos
  # Optional: Specify minimum macOS version if known (e.g., 10.12.2 for TouchID)
  depends_on macos: :catalina

  def install
    # Ensure the script is executable and renamed
    bin.install "sudo-touchid.sh" => "sudo-touchid"
    # Explicitly set executable permissions (optional but good practice)
    chmod 0555, bin/"sudo-touchid"
  end

  service do
    run [opt_bin/"sudo-touchid"]
    require_root true
    log_path "/var/log/sudo-touchid.log" # Optional: Log output
    error_log_path "/var/log/sudo-touchid.error.log" # Optional: Error log
  end

  test do
    # Basic test to verify the script is installed and executable
    assert_predicate bin/"sudo-touchid", :executable?
    # Optional: Add a lightweight test (e.g., check version or help output)
    assert_match "sudo-touchid", shell_output("#{bin}/sudo-touchid --help 2>&1", 1)
  end
end

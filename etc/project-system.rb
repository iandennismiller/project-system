# Homebrew Formula
# project-system, Ian Dennis Miller
# rebuild with 'make homebrew'

class ProjectSystem < Formula
  desc "create and open projects"
  homepage "https://github.com/iandennismiller/project-system"
  url "https://files.pythonhosted.org/packages/3f/8c/2776aa685a2fa58c76a71747856c88cecdbe4d50bb3707bd48afef5d2056/project-system-0.1.2.tar.gz"
  sha256 "527c3424888982361c5cbfe888f0cde4cad7c255a7c55c5ccbe7e7a2d1e2fb98"

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/f2/2f/0b98b06a345a761bec91a079ccae392d282690c2d8272e708f4d10829e22/Jinja2-2.8.tar.gz"
    sha256 "bc1ff2ff88dbfacefde4ddde471d1417d3b304e8df103a7a9437d47269201bf4"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/c0/41/bae1254e0396c0cc8cf1751cb7d9afc90a602353695af5952530482c963f/MarkupSafe-0.23.tar.gz"
    sha256 "a4ec1aff59b95a14b45eb2e23761a0179e98319da5a7eb76b56ea8cdc7b871c3"
  end

  resource "mr.bob" do
    url "https://files.pythonhosted.org/packages/05/43/7910606984c7a0259b383ec770da801de74da1f71612558b0aca2a311d02/mr.bob-0.1a9.zip"
    sha256 "fb88788ae77ced4025b2e737e227e63fec625a36b6265f37516efe904630fcb6"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/b3/b2/238e2590826bfdd113244a40d9d3eb26918bd798fc187e2360a8367068db/six-1.10.0.tar.gz"
    sha256 "105f8d68616f8248e24bf0e9372ef04d3cc10104f1980f54d57b2ce73a5ad56a"
  end

  include Language::Python::Virtualenv

  def install
    virtualenv_install_with_resources
  end
end

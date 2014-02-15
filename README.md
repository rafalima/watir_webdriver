<h1>Instalação</h1>

<ol>
  <li>Instalar <a href="https://github.com/sstephenson/rbenv">Rbenv</a> ou <a href="rvm.io/rvm/install">RVM</a></li>
  <li>Ruby
    <ul>
      <li><a href="rubyinstaller.org/">windows installer</a></li>
      <li><a href="https://github.com/sstephenson/rbenv#installing-ruby-versions">unix</a></li>
    </ul>
  </li>
  <li>Instalar o <a href="bundler.io/">bundler</a></li>
  <li>Montar estrutura de arquivos igual ao arquivo <a target="_BLANK" href="page_object_tree.txt">page_object_tree.txt</a> </li>
  <li>Executar "bundle install" no root do projeto para instalar todas as dependências definidas no Gemfile</li>
  <li>Executar "bundle exec cucumber" para rodar todos os testes que estão na pastar "feature"</li>
</ol>

#-- START ZCACHE GENERATED FILE
#-- GENERATED: Sun Apr 12 23:26:21 WIB 2020
#-- ANTIGEN v2.2.2
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/home/op/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib /home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-extras /home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases /home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lol /home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm /home/op/.antigen/bundles/supercrabtree/k /home/op/.antigen/bundles/zsh-users/zsh-completions /home/op/.antigen/bundles/zsh-users/zsh-autosuggestions /home/op/.antigen/bundles/zsh-users/zsh-syntax-highlighting /home/op/.antigen/bundles/mafredri/zsh-async /home/op/.antigen/bundles/marszall87/lambda-pure) path+=(/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib /home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-extras /home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found /home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases /home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lol /home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm /home/op/.antigen/bundles/supercrabtree/k /home/op/.antigen/bundles/zsh-users/zsh-completions /home/op/.antigen/bundles/zsh-users/zsh-autosuggestions /home/op/.antigen/bundles/zsh-users/zsh-syntax-highlighting /home/op/.antigen/bundles/mafredri/zsh-async /home/op/.antigen/bundles/marszall87/lambda-pure)
_antigen_compinit () {
  autoload -Uz compinit; compinit -d "/home/op/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/home/op/.antigen/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/home/op/.antigen/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-extras/git-extras.plugin.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lol/lol.plugin.zsh';
source '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm/npm.plugin.zsh';
source '/home/op/.antigen/bundles/supercrabtree/k/k.sh';
source '/home/op/.antigen/bundles/zsh-users/zsh-completions/zsh-completions.plugin.zsh';
source '/home/op/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh';
source '/home/op/.antigen/bundles/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh';
source '/home/op/.antigen/bundles/mafredri/zsh-async/async.plugin.zsh';
source '/home/op/.antigen/bundles/marszall87/lambda-pure/lambda-pure.zsh';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/git-extras plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/command-not-found plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/common-aliases plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/lol plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/npm plugin true' 'https://github.com/supercrabtree/k.git / plugin true' 'https://github.com/zsh-users/zsh-completions.git / plugin true' 'https://github.com/zsh-users/zsh-autosuggestions.git / plugin true' 'https://github.com/zsh-users/zsh-syntax-highlighting.git / plugin true' 'https://github.com/mafredri/zsh-async.git / plugin true' 'https://github.com/marszall87/lambda-pure.git / plugin true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-extras' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git-extras/git-extras.plugin.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/command-not-found/command-not-found.plugin.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/common-aliases/common-aliases.plugin.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lol' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/lol/lol.plugin.zsh' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm' '/home/op/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/npm/npm.plugin.zsh' '/home/op/.antigen/bundles/supercrabtree/k//' '/home/op/.antigen/bundles/supercrabtree/k///k.plugin.zsh' '/home/op/.antigen/bundles/zsh-users/zsh-completions//' '/home/op/.antigen/bundles/zsh-users/zsh-completions///zsh-completions.plugin.zsh' '/home/op/.antigen/bundles/zsh-users/zsh-autosuggestions//' '/home/op/.antigen/bundles/zsh-users/zsh-autosuggestions///zsh-autosuggestions.plugin.zsh' '/home/op/.antigen/bundles/zsh-users/zsh-syntax-highlighting//' '/home/op/.antigen/bundles/zsh-users/zsh-syntax-highlighting///zsh-syntax-highlighting.plugin.zsh' '/home/op/.antigen/bundles/mafredri/zsh-async//' '/home/op/.antigen/bundles/mafredri/zsh-async///async.plugin.zsh' '/home/op/.antigen/bundles/marszall87/lambda-pure//' '/home/op/.antigen/bundles/marszall87/lambda-pure///lambda-pure.plugin.zsh')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.2'

#-- END ZCACHE GENERATED FILE

if [ "$EUID" -eq 0 ]
    then echo "must not run as root"
        exit
fi

echo "==================> Creating .inputrc with backward search over pg-up/pg-down"
cp  inputrc ${HOME}/.inputrc

echo "==================> Restarting bash"
exec bash


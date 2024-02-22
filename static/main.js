function openMenu(){
    console

    setTimeout(open,500)
}

function open(){
    let menu = document.querySelector('.menu')
    menu.click()
}

function menuMobile(){
    let opened_menu = document.querySelector('#opened-menu')
    let closed_menu = document.querySelector('#closed-menu')
    opened_menu.classList.toggle('d-none');
    closed_menu.classList.toggle('d-none');
}
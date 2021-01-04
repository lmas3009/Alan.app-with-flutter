intent(
    'What is your name',
    'Wow are you',p => {
        p.play('I am Charles!');
    }
)

intent(
    'Navigate (to| me to) About us page',
    p => {
        p.play({"command":"Aboutus"});
        p.play("Navigating to About us page");
    }
)

intent(
    'Navigate (to| me to) Main page',
    p => {
        p.play({"command":"Main"});
        p.play("Navigating to Main Page");
    }
)

intent(
    'Navigate (to| me to) Cart page',
    p => {
        p.play({"command":"Cart"});
        p.play("Navigating to Cart Page");
    }
)

intent(
    'Navigate (to| me to) Previous page',
    p => {
        p.play({"command":"Previous"});
        p.play("Navigating to Previous Page");
    }
)
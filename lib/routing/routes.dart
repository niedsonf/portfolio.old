const RootRoute = '/hello';

const HomePageDisplayName = 'Início';
const HomePageRoute = '/home';

const AboutPageDisplayName = 'Sobre';
const AboutPageRoute = '/about';

const SkillsPageDisplayName = 'Habilidades';
const SkillsPageRoute = '/skills';

const PortfolioPageDisplayName = 'Portfolio';
const PortfolioPageRoute = '/portfolio';

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> menuItems = [
  MenuItem(HomePageDisplayName, HomePageRoute),
  MenuItem(AboutPageDisplayName, AboutPageRoute),
  MenuItem(SkillsPageDisplayName, SkillsPageRoute),
  MenuItem(PortfolioPageDisplayName, PortfolioPageRoute),
];

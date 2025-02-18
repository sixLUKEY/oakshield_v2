import shellLogo from '$lib/components/ui/carousel/icons/shell.png'
import aslaLogo from '$lib/components/ui/carousel/icons/asla.png'
import wcedLogo from '$lib/components/ui/carousel/icons/wced.png'
import wcbLogo from '$lib/components/ui/carousel/icons/wcb.png'
import lesediLogo from '$lib/components/ui/carousel/icons/lesedi.png'
import siyaLogo from '$lib/components/ui/carousel/icons/siyavuya.png'
import actoLogo from '$lib/components/ui/carousel/icons/acto.png'

export const projects: Project[] = [{
  index: 0,
  src: shellLogo,
  alt: 'Shell',
  name: 'Shell Garage Atlantis',
  duration: '44 months > current'
}, {
  index: 1,
  src: aslaLogo,
  alt: 'Asla Construction',
  name: 'Asla Construction',
  duration: '22 months > current'
}, {
  index: 2,
  src: wcedLogo,
  alt: 'WCED',
  name: 'WCED Safe Schools',
  duration: 'During school holidays'
},{
  index: 3,
  src: wcbLogo,
  alt: 'WCB Construction',
  name: 'WCB Construction',
  duration: '16 months > current'
},{
  index: 4,
  src: lesediLogo,
  alt: 'Lesedi Nuclear Services',
  name: 'Lesedi Nuclear Services',
  duration: '5 months > current'
},{
  index: 5,
  src: siyaLogo,
  alt: 'Siyavuya Power Projects',
  name: 'Siyavuya Power Projects',
  duration: '18 months'
},{
  index: 6,
  src: actoLogo,
  alt: 'Actophambili Roads',
  name: 'Actophambili Roads',
  duration: 'Various contracts'
}];

type Project = {
  index: number;
  src: string;
  alt: string;
  name: string;
  duration: string;
}

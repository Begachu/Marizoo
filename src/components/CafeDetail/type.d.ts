/**
 * 카페 정보
 */
export interface ICafeDetail {
  storeId: number;
  storename: string;
  description: string;
  address: string;
  openingHours: string;
  tel: string;
  email: string;
  prifileImg: string;
  lat: number;
  lng: number;
}

export interface ICafeAnimal {
  classification: string;
  gender: string;
  id: number;
  img: string;
  name: string;
}

export interface ICafeOnair {
  id: number;
  title: string;
  thumbnail: string;
  classificationImgs: string[];
}

export interface ICafePlay {
  id: number;
  playDateTime: string;
  title: string;
  description: string;
  img: string;
}

class MapController < ApplicationController
  def sample
    # 地図
    @zoom = 15
    @center = {lat: '35.681298', lng: '139.766247'}

    # 円
    @radius = 100

    # マーカー
    @location = set_location

    # 情報ウィンドウ
    @window = set_window

  end

  private

  def set_location
    location = []
    location.push({
                       label: 'in',
                       lat: 35.681298-0.005,
                       lng: 139.766247,
                       icon: 'http://mt.google.com/vt/icon/name=icons/spotlight/star_L_8x.png&scale=1',
                   })
    location.push({
                       label: 'in',
                       lat: 35.681298+0.005,
                       lng: 139.766247,
                       icon: 'http://mt.google.com/vt/icon/name=icons/spotlight/star_L_8x.png&scale=1',
                   })
    location.push({
                       label: 'in',
                       lat: 35.681298,
                       lng: 139.766247-0.005,
                       icon: 'http://mt.google.com/vt/icon/name=icons/spotlight/star_L_8x.png&scale=1',
                   })
    location.push({
                       label: 'in',
                       lat: 35.681298,
                       lng: 139.766247+0.005,
                       icon: 'http://mt.google.com/vt/icon/name=icons/spotlight/star_L_8x.png&scale=1',
                   })
  end

  def set_window
    window = []
    window.push({
                    label: 'out',
                    lat: 35.681298-0.0025,
                    lng: 139.766247,
                })
    window.push({
                    label: 'out',
                    lat: 35.681298+0.0025,
                    lng: 139.766247,
                })
    window.push({
                    label: 'out',
                    lat: 35.681298,
                    lng: 139.766247-0.0025,
                })
    window.push({
                    label: 'out',
                    lat: 35.681298,
                    lng: 139.766247+0.0025,
                })
  end
end

.class public Lcom/eventgenie/android/mapping/d2/Coloriser;
.super Ljava/lang/Object;
.source "Coloriser.java"

# interfaces
.implements Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/InterfaceMapItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHallColor(Landroid/content/Context;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;
    .param p2, "hall"    # Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/eventgenie/android/R$color;->map_booth_fill_default:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 105
    .local v0, "color":I
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->isCompatibility()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getMapId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/ValueCheck;->hasContent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 106
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->getMapId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "label":Ljava/lang/String;
    invoke-static {p0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v5

    invoke-virtual {v5, p0, v7}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    .line 109
    .local v2, "namespace":J
    const/4 v4, -0x1

    .line 111
    .local v4, "tmpColor":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_0

    .line 112
    const/4 v5, 0x2

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v2, v3, v5}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getDefaultColor(Landroid/content/Context;JLjava/lang/String;)I

    move-result v4

    .line 115
    :cond_0
    if-ne v4, v8, :cond_1

    .line 116
    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v2, v3, v5}, Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;->getDefaultColor(Landroid/content/Context;JLjava/lang/String;)I

    move-result v4

    .line 119
    :cond_1
    if-eq v4, v8, :cond_2

    .line 120
    move v0, v4

    .line 123
    .end local v1    # "label":Ljava/lang/String;
    .end local v2    # "namespace":J
    .end local v4    # "tmpColor":I
    :cond_2
    return v0
.end method

.method public static setAnnotationColors(Landroid/content/Context;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;Lcom/eventgenie/android/ui/mapping2d/MapItemView;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "annotation"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    .param p2, "view"    # Lcom/eventgenie/android/ui/mapping2d/MapItemView;

    .prologue
    const v6, 0x106000d

    .line 53
    invoke-virtual {p2}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->getItemType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 74
    :pswitch_0
    const/4 v2, 0x0

    .line 75
    .local v2, "outlineColor":I
    const/4 v1, 0x0

    .line 76
    .local v1, "fillColor":I
    const/4 v3, 0x0

    .line 77
    .local v3, "textColor":I
    const/4 v0, 0x0

    .line 80
    .local v0, "apply":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p2, v1, v2, v3}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setColors(III)V

    .line 86
    :cond_0
    return-void

    .line 55
    .end local v0    # "apply":Z
    .end local v1    # "fillColor":I
    .end local v2    # "outlineColor":I
    .end local v3    # "textColor":I
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 56
    .restart local v2    # "outlineColor":I
    move v1, v2

    .line 57
    .restart local v1    # "fillColor":I
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getTextColor()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$color;->map_annotation_text_color:I

    invoke-static {p0, v4, v5}, Lcom/eventgenie/android/mapping/d2/Coloriser;->tryColour(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 58
    .restart local v3    # "textColor":I
    const/4 v0, 0x1

    .line 59
    .restart local v0    # "apply":Z
    goto :goto_0

    .line 61
    .end local v0    # "apply":Z
    .end local v1    # "fillColor":I
    .end local v2    # "outlineColor":I
    .end local v3    # "textColor":I
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 62
    .restart local v2    # "outlineColor":I
    move v1, v2

    .line 63
    .restart local v1    # "fillColor":I
    move v3, v2

    .line 64
    .restart local v3    # "textColor":I
    const/4 v0, 0x1

    .line 65
    .restart local v0    # "apply":Z
    goto :goto_0

    .line 68
    .end local v0    # "apply":Z
    .end local v1    # "fillColor":I
    .end local v2    # "outlineColor":I
    .end local v3    # "textColor":I
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$color;->map_booth_outline_default:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 69
    .restart local v2    # "outlineColor":I
    invoke-virtual {p1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getFillColor()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/eventgenie/android/R$color;->map_annotation_shape_fill:I

    invoke-static {p0, v4, v5}, Lcom/eventgenie/android/mapping/d2/Coloriser;->tryColour(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 70
    .restart local v1    # "fillColor":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 71
    .restart local v3    # "textColor":I
    const/4 v0, 0x1

    .line 72
    .restart local v0    # "apply":Z
    goto :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static setBoothColors(Landroid/content/Context;ILcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;Lcom/eventgenie/android/ui/mapping2d/MapItemView;Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # I
    .param p2, "booth"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    .param p3, "view"    # Lcom/eventgenie/android/ui/mapping2d/MapItemView;
    .param p4, "hall"    # Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;

    .prologue
    .line 127
    if-nez p2, :cond_0

    .line 128
    const-string v3, "^ MAP2D: setColors() MapItem is null..."

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 176
    :goto_0
    return-void

    .line 132
    :cond_0
    if-nez p3, :cond_1

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ MAP2D: setColors() button is null. Text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getDisplayedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mapId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getMapId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$color;->map_booth_outline_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 141
    .local v1, "outlineColor":I
    packed-switch p1, :pswitch_data_0

    .line 157
    invoke-virtual {p2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getTextColor()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$color;->map_booth_label_default:I

    invoke-static {p0, v3, v4}, Lcom/eventgenie/android/mapping/d2/Coloriser;->tryColour(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 159
    .local v2, "textColor":I
    invoke-virtual {p2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->isFavourite()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$color;->map_booth_fill_favourite:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 170
    .local v0, "fillColor":I
    :goto_1
    invoke-virtual {p3, v0, v1, v2}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->setColors(III)V

    .line 175
    invoke-virtual {p3}, Lcom/eventgenie/android/ui/mapping2d/MapItemView;->invalidate()V

    goto :goto_0

    .line 143
    .end local v0    # "fillColor":I
    .end local v2    # "textColor":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$color;->map_booth_fill_selected:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 144
    .restart local v0    # "fillColor":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$color;->map_booth_outline_selected:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$color;->map_booth_label_selected:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 146
    .restart local v2    # "textColor":I
    goto :goto_1

    .line 148
    .end local v0    # "fillColor":I
    .end local v2    # "textColor":I
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$color;->map_booth_fill_nav_origin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 149
    .restart local v0    # "fillColor":I
    invoke-virtual {p2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getTextColor()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$color;->map_booth_label_default:I

    invoke-static {p0, v3, v4}, Lcom/eventgenie/android/mapping/d2/Coloriser;->tryColour(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 150
    .restart local v2    # "textColor":I
    goto :goto_1

    .line 152
    .end local v0    # "fillColor":I
    .end local v2    # "textColor":I
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$color;->map_booth_fill_nav_destination:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 153
    .restart local v0    # "fillColor":I
    invoke-virtual {p2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getTextColor()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$color;->map_booth_label_default:I

    invoke-static {p0, v3, v4}, Lcom/eventgenie/android/mapping/d2/Coloriser;->tryColour(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 154
    .restart local v2    # "textColor":I
    goto :goto_1

    .line 162
    .end local v0    # "fillColor":I
    :cond_2
    const-string v3, "-1"

    invoke-virtual {p2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getFillColor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 163
    invoke-virtual {p2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getFillColor()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$color;->map_booth_fill_default:I

    invoke-static {p0, v3, v4}, Lcom/eventgenie/android/mapping/d2/Coloriser;->tryColour(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "fillColor":I
    goto :goto_1

    .line 166
    .end local v0    # "fillColor":I
    :cond_3
    invoke-static {p0, p2, p4}, Lcom/eventgenie/android/mapping/d2/Coloriser;->getHallColor(Landroid/content/Context;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;Lcom/eventgenie/android/mapping/d2/containers/InteractiveHall;)I

    move-result v0

    .restart local v0    # "fillColor":I
    goto :goto_1

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static tryColour(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colour"    # Ljava/lang/String;
    .param p2, "defaultColourId"    # I

    .prologue
    .line 89
    const-string v1, "-1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, "color":I
    const/high16 v1, -0x1000000

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 98
    .end local v0    # "color":I
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.class Lcom/eventgenie/android/mapping/d2/parsers/DbLocationsParser;
.super Lcom/eventgenie/android/mapping/d2/parsers/BaseLocationsParser;
.source "DbLocationsParser.java"


# static fields
.field private static final MAP_POSITION_LABEL:Ljava/lang/String; = "mapPosition_label"

.field private static final MAP_POSITION_TEXT_BOUNDING_BOX:Ljava/lang/String; = "mapPosition_textBoundingBox"

.field private static final MAP_POSITION_TYPE:Ljava/lang/String; = "mapPosition_type"

.field private static final MAP_POSITION_VECTORS:Ljava/lang/String; = "mapPosition_vectors"

.field private static final MAP_POSITION_VECTORS_FORMAT:Ljava/lang/String; = "mapPosition_vectorsFormat"

.field private static final MAP_POSITION_VERSION:Ljava/lang/String; = "mapPosition_version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/eventgenie/android/mapping/d2/parsers/BaseLocationsParser;-><init>()V

    .line 63
    return-void
.end method

.method private static parseCoordinateString(Ljava/lang/String;)[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    .locals 12
    .param p0, "vertexString"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x1

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v2, "points":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;>;"
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 159
    :cond_0
    const/4 v5, 0x0

    new-array v3, v5, [Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .line 183
    .local v3, "res":[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    :goto_0
    return-object v3

    .line 162
    .end local v3    # "res":[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    :cond_1
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "pointArr":[Ljava/lang/String;
    const-string v4, ""

    .line 165
    .local v4, "tmpPoint":Ljava/lang/String;
    const-wide/16 v6, 0x1

    .line 166
    .local v6, "x":D
    const-wide/16 v8, 0x1

    .line 168
    .local v8, "y":D
    array-length v5, v1

    if-lez v5, :cond_3

    array-length v5, v1

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_3

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_3

    .line 170
    aget-object v5, v1, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 172
    rem-int/lit8 v5, v0, 0x2

    if-nez v5, :cond_2

    .line 173
    invoke-static {v4, v10, v11}, Lcom/eventgenie/android/mapping/d2/parsers/Helper;->tryDouble(Ljava/lang/String;D)D

    move-result-wide v6

    .line 169
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_2
    invoke-static {v4, v10, v11}, Lcom/eventgenie/android/mapping/d2/parsers/Helper;->tryDouble(Ljava/lang/String;D)D

    move-result-wide v8

    .line 176
    new-instance v5, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;-><init>(DD)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 181
    .end local v0    # "i":I
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .restart local v3    # "res":[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    goto :goto_0
.end method

.method private parseGenieDatabase(Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;Lcom/genie_connect/android/db/access/GenieConnectDatabase;J)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .locals 15
    .param p1, "myStore"    # Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p3, "hallId"    # J

    .prologue
    .line 72
    invoke-virtual/range {p2 .. p2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getLocations()Lcom/genie_connect/android/db/access/DbLocations;

    move-result-object v12

    move-wide/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Lcom/genie_connect/android/db/access/DbLocations;->getLocationsForMap(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    .line 73
    .local v4, "locs":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v4}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    move-result v2

    .line 75
    .local v2, "hasData":Z
    if-nez p1, :cond_0

    .line 76
    new-instance p1, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    .end local p1    # "myStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    invoke-direct/range {p1 .. p1}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;-><init>()V

    .line 79
    .restart local p1    # "myStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    :cond_0
    if-nez v2, :cond_1

    .line 80
    const-string v12, "^ MAP2D-ShapesParser: No data."

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 94
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    .line 95
    const-string v12, "mapPosition_vectorsFormat"

    invoke-interface {v4, v12}, Luk/co/alt236/easycursor/EasyCursor;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 96
    .local v10, "vectorFormat":I
    const-string v12, "name"

    invoke-interface {v4, v12}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-static {v12, v13}, Lcom/eventgenie/android/mapping/d2/parsers/Helper;->tryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "shapeId":Ljava/lang/String;
    if-nez v10, :cond_3

    .line 99
    const-string v12, "mapPosition_version"

    invoke-interface {v4, v12}, Luk/co/alt236/easycursor/EasyCursor;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 100
    .local v11, "version":I
    const-string v12, "mapPosition_type"

    invoke-interface {v4, v12}, Luk/co/alt236/easycursor/EasyCursor;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 101
    .local v9, "type":I
    const-string v12, "mapPosition_label"

    invoke-interface {v4, v12}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/eventgenie/android/mapping/d2/parsers/DbLocationsParser;->formatLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "label":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 104
    invoke-virtual {p0, v11, v9, v6, v3}, Lcom/eventgenie/android/mapping/d2/parsers/DbLocationsParser;->getMapItemType(IILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 105
    const-string v12, "mapPosition_vectors"

    invoke-interface {v4, v12}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-static {v12, v13}, Lcom/eventgenie/android/mapping/d2/parsers/Helper;->tryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/mapping/d2/parsers/DbLocationsParser;->parseCoordinateString(Ljava/lang/String;)[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    move-result-object v7

    .line 107
    .local v7, "shapeVertexArray":[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    const-string v12, "mapPosition_textBoundingBox"

    invoke-interface {v4, v12}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-static {v12, v13}, Lcom/eventgenie/android/mapping/d2/parsers/Helper;->tryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/mapping/d2/parsers/DbLocationsParser;->parseCoordinateString(Ljava/lang/String;)[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    move-result-object v8

    .line 110
    .local v8, "textBoxVertexArray":[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    packed-switch v9, :pswitch_data_0

    .line 130
    const/4 v5, 0x0

    .line 133
    .local v5, "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    :goto_1
    if-eqz v5, :cond_2

    .line 134
    invoke-virtual {v5, v11}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setVersion(I)V

    .line 135
    invoke-virtual {v5, v10}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setVectorFormat(I)V

    .line 136
    invoke-virtual {v5, v8}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setTextBoundingBox([Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 137
    invoke-static {v5, v4}, Lcom/eventgenie/android/mapping/d2/parsers/DbLocationsParser;->populateOtherItemFields(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;Luk/co/alt236/easycursor/EasyCursor;)V

    .line 139
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->addMapItem(Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;)V

    .line 145
    .end local v3    # "label":Ljava/lang/String;
    .end local v5    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    .end local v7    # "shapeVertexArray":[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    .end local v8    # "textBoxVertexArray":[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    .end local v9    # "type":I
    .end local v11    # "version":I
    :cond_2
    :goto_2
    invoke-interface {v4}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v2

    goto :goto_0

    .line 112
    .restart local v3    # "label":Ljava/lang/String;
    .restart local v7    # "shapeVertexArray":[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    .restart local v8    # "textBoxVertexArray":[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    .restart local v9    # "type":I
    .restart local v11    # "version":I
    :pswitch_0
    new-instance v5, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemBooth;

    invoke-direct {v5, v6, v3, v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemBooth;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 113
    .restart local v5    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    goto :goto_1

    .line 115
    .end local v5    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    :pswitch_1
    new-instance v5, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemIcon;

    invoke-direct {v5, v6, v3, v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemIcon;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 116
    .restart local v5    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    goto :goto_1

    .line 118
    .end local v5    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    :pswitch_2
    new-instance v5, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemShape;

    invoke-direct {v5, v6, v3, v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemShape;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 119
    .restart local v5    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    goto :goto_1

    .line 121
    .end local v5    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    :pswitch_3
    new-instance v5, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemText;

    invoke-direct {v5, v6, v3, v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemText;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 122
    .restart local v5    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    goto :goto_1

    .line 124
    .end local v5    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    :pswitch_4
    new-instance v5, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemUnderlay;

    invoke-direct {v5, v6, v3, v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemUnderlay;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 125
    .restart local v5    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    goto :goto_1

    .line 127
    .end local v5    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    :pswitch_5
    new-instance v5, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemBoothWithIcon;

    invoke-direct {v5, v6, v3, v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemBoothWithIcon;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 128
    .restart local v5    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    goto :goto_1

    .line 143
    .end local v3    # "label":Ljava/lang/String;
    .end local v5    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    .end local v7    # "shapeVertexArray":[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    .end local v8    # "textBoxVertexArray":[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    .end local v9    # "type":I
    .end local v11    # "version":I
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "^ MAP2D-ShapesParser: Unknown vector format \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' skipping shape \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_2

    .line 148
    .end local v6    # "shapeId":Ljava/lang/String;
    .end local v10    # "vectorFormat":I
    :cond_4
    invoke-static {v4}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 150
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "^ MAP2D-ShapesParser: Done - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->getMapItemCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 151
    return-object p1

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static populateOtherItemFields(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 9
    .param p0, "node"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    .param p1, "locs"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 187
    const-string v7, "mapPosition_colour"

    invoke-interface {p1, v7}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "-1"

    invoke-static {v7, v8}, Lcom/eventgenie/android/mapping/d2/parsers/Helper;->tryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setFillColor(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getType()I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getVersion()I

    move-result v7

    if-nez v7, :cond_2

    .line 192
    const-string v7, "-1"

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setTextColor(Ljava/lang/String;)V

    .line 199
    :goto_0
    const-string v7, "isFavourite"

    invoke-interface {p1, v7}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Luk/co/alt236/easycursor/EasyCursor;->getInt(I)I

    move-result v7

    if-ne v7, v5, :cond_3

    move v0, v5

    .line 200
    .local v0, "isFavouriteExhibitor":Z
    :goto_1
    const-string v7, "isFavouriteSession"

    invoke-interface {p1, v7}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Luk/co/alt236/easycursor/EasyCursor;->getInt(I)I

    move-result v7

    if-ne v7, v5, :cond_4

    move v1, v5

    .line 201
    .local v1, "isFavouriteSession":Z
    :goto_2
    const-string v7, "isFavouriteSubSession"

    invoke-interface {p1, v7}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Luk/co/alt236/easycursor/EasyCursor;->getInt(I)I

    move-result v7

    if-ne v7, v5, :cond_5

    move v2, v5

    .line 202
    .local v2, "isFavouriteSubSession":Z
    :goto_3
    const-string v7, "isSessionScheduled"

    invoke-interface {p1, v7}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Luk/co/alt236/easycursor/EasyCursor;->getInt(I)I

    move-result v7

    if-ne v7, v5, :cond_6

    move v3, v5

    .line 203
    .local v3, "isSessionScheduled":Z
    :goto_4
    const-string v7, "isSubSessionScheduled"

    invoke-interface {p1, v7}, Luk/co/alt236/easycursor/EasyCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Luk/co/alt236/easycursor/EasyCursor;->getInt(I)I

    move-result v7

    if-ne v7, v5, :cond_7

    move v4, v5

    .line 205
    .local v4, "isSubSessionScheduled":Z
    :goto_5
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    move v6, v5

    :cond_1
    invoke-virtual {p0, v6}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setFavourite(Z)V

    .line 206
    const-string v5, "mapPosition_map"

    invoke-interface {p1, v5}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-static {v5, v6, v7}, Lcom/eventgenie/android/mapping/d2/parsers/Helper;->tryLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setHallId(J)V

    .line 207
    const-string v5, "mapPosition_zIndex"

    invoke-interface {p1, v5}, Luk/co/alt236/easycursor/EasyCursor;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setzOrder(I)V

    .line 208
    const-string v5, "mapPosition_rotation"

    invoke-interface {p1, v5}, Luk/co/alt236/easycursor/EasyCursor;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setRotation(I)V

    .line 209
    return-void

    .line 194
    .end local v0    # "isFavouriteExhibitor":Z
    .end local v1    # "isFavouriteSession":Z
    .end local v2    # "isFavouriteSubSession":Z
    .end local v3    # "isSessionScheduled":Z
    .end local v4    # "isSubSessionScheduled":Z
    :cond_2
    const-string v7, "mapPosition_labelColour"

    invoke-interface {p1, v7}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "-1"

    invoke-static {v7, v8}, Lcom/eventgenie/android/mapping/d2/parsers/Helper;->tryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setTextColor(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move v0, v6

    .line 199
    goto :goto_1

    .restart local v0    # "isFavouriteExhibitor":Z
    :cond_4
    move v1, v6

    .line 200
    goto :goto_2

    .restart local v1    # "isFavouriteSession":Z
    :cond_5
    move v2, v6

    .line 201
    goto :goto_3

    .restart local v2    # "isFavouriteSubSession":Z
    :cond_6
    move v3, v6

    .line 202
    goto :goto_4

    .restart local v3    # "isSessionScheduled":Z
    :cond_7
    move v4, v6

    .line 203
    goto :goto_5
.end method


# virtual methods
.method protected parseDb(Lcom/genie_connect/android/db/access/GenieConnectDatabase;Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;J)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .locals 3
    .param p1, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p2, "mapItemStore"    # Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .param p3, "hallId"    # J

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ MAP2D-ShapesParser: Parsing EG database for locations (hallId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/eventgenie/android/mapping/d2/parsers/DbLocationsParser;->parseGenieDatabase(Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;Lcom/genie_connect/android/db/access/GenieConnectDatabase;J)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v0

    return-object v0
.end method

.class Lcom/eventgenie/android/mapping/d2/parsers/FileShapesV2Parser;
.super Lcom/eventgenie/android/mapping/d2/parsers/BaseLocationsParser;
.source "FileShapesV2Parser.java"


# static fields
.field private static final DELIMITER:Ljava/lang/String; = "##"

.field private static final INVALID_COORDINATE:D = 4.9E-324

.field private static final SHAPE_ITEM_LABEL:I = 0x1

.field private static final SHAPE_ITEM_NAME:I = 0x0

.field private static final SHAPE_ITEM_TYPE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/eventgenie/android/mapping/d2/parsers/BaseLocationsParser;-><init>()V

    .line 51
    return-void
.end method

.method private parse(Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;Ljava/io/InputStream;J)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .locals 31
    .param p1, "mapItemStore"    # Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .param p2, "shapesFile"    # Ljava/io/InputStream;
    .param p3, "hallId"    # J

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance p1, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    .end local p1    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    invoke-direct/range {p1 .. p1}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;-><init>()V

    .line 65
    .restart local p1    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    :cond_0
    if-nez p2, :cond_1

    .line 66
    const-string v28, "^ MAP2D-ShapesParser: No data."

    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 77
    :cond_1
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v20, "pointList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;>;"
    const-wide/16 v16, 0x1

    .line 82
    .local v16, "lineCount":J
    :try_start_0
    new-instance v10, Ljava/io/DataInputStream;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 83
    .local v10, "in":Ljava/io/DataInputStream;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v28, Ljava/io/InputStreamReader;

    move-object/from16 v0, v28

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v28

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 85
    .local v6, "br":Ljava/io/BufferedReader;
    const-string v12, ""

    .line 86
    .local v12, "itemName":Ljava/lang/String;
    const-string v11, ""

    .line 89
    .local v11, "itemLabel":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    .local v21, "strLine":Ljava/lang/String;
    if-eqz v21, :cond_5

    .line 90
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 91
    const-string v28, "##"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 92
    .local v14, "lineArray":[Ljava/lang/String;
    const-wide/16 v24, 0x1

    .line 93
    .local v24, "x":D
    const-wide/16 v26, 0x1

    .line 94
    .local v26, "y":D
    const-string v12, ""

    .line 95
    const-string v11, ""

    .line 97
    const/4 v13, 0x0

    .line 98
    .local v13, "itemType":I
    const/16 v23, 0x1

    .line 101
    .local v23, "version":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, v14

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v9, v0, :cond_3

    .line 102
    aget-object v28, v14, v9

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 104
    .local v8, "field":Ljava/lang/String;
    packed-switch v9, :pswitch_data_0

    .line 115
    rem-int/lit8 v28, v9, 0x2

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 116
    const-wide/16 v28, 0x1

    move-wide/from16 v0, v28

    invoke-static {v8, v0, v1}, Lcom/eventgenie/android/mapping/d2/parsers/Helper;->tryDouble(Ljava/lang/String;D)D

    move-result-wide v24

    .line 101
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 106
    :pswitch_0
    move-object v12, v8

    .line 107
    goto :goto_2

    .line 109
    :pswitch_1
    move-object v11, v8

    .line 110
    goto :goto_2

    .line 112
    :pswitch_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 113
    goto :goto_2

    .line 118
    :cond_2
    const-wide/16 v28, 0x1

    move-wide/from16 v0, v28

    invoke-static {v8, v0, v1}, Lcom/eventgenie/android/mapping/d2/parsers/Helper;->tryDouble(Ljava/lang/String;D)D

    move-result-wide v26

    .line 119
    new-instance v28, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    move-object/from16 v0, v28

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;-><init>(DD)V

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 159
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "field":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "in":Ljava/io/DataInputStream;
    .end local v11    # "itemLabel":Ljava/lang/String;
    .end local v12    # "itemName":Ljava/lang/String;
    .end local v13    # "itemType":I
    .end local v14    # "lineArray":[Ljava/lang/String;
    .end local v21    # "strLine":Ljava/lang/String;
    .end local v23    # "version":I
    .end local v24    # "x":D
    .end local v26    # "y":D
    :catch_0
    move-exception v7

    .line 160
    .local v7, "e":Ljava/lang/Exception;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "^ MAP2D-ShapesParser: ERROR: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 161
    const/16 p1, 0x0

    move-object/from16 v15, p1

    .line 166
    .end local v7    # "e":Ljava/lang/Exception;
    .end local p1    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .local v15, "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    :goto_3
    return-object v15

    .line 125
    .end local v15    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "i":I
    .restart local v10    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "itemLabel":Ljava/lang/String;
    .restart local v12    # "itemName":Ljava/lang/String;
    .restart local v13    # "itemType":I
    .restart local v14    # "lineArray":[Ljava/lang/String;
    .restart local v21    # "strLine":Ljava/lang/String;
    .restart local v23    # "version":I
    .restart local v24    # "x":D
    .restart local v26    # "y":D
    .restart local p1    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    :cond_3
    if-eqz v12, :cond_4

    :try_start_1
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_4

    .line 126
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1, v13, v12, v11}, Lcom/eventgenie/android/mapping/d2/parsers/FileShapesV2Parser;->getMapItemType(IILjava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 127
    .local v22, "type":I
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;

    .line 129
    .local v19, "pointArray":[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    packed-switch v22, :pswitch_data_1

    .line 143
    const/16 v18, 0x0

    .line 146
    .local v18, "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    :goto_4
    if-eqz v18, :cond_4

    .line 147
    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setVersion(I)V

    .line 148
    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setVectorFormat(I)V

    .line 149
    move-object/from16 v0, v18

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/mapping/d2/parsers/FileShapesV2Parser;->populateOtherItemFields(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;J)V

    .line 151
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->addMapItem(Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;)V

    .line 154
    .end local v18    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    .end local v19    # "pointArray":[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    .end local v22    # "type":I
    :cond_4
    const-wide/16 v28, 0x1

    add-long v16, v16, v28

    goto/16 :goto_0

    .line 131
    .restart local v19    # "pointArray":[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    .restart local v22    # "type":I
    :pswitch_3
    new-instance v18, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemBooth;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v11, v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemBooth;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 132
    .restart local v18    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    goto :goto_4

    .line 134
    .end local v18    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    :pswitch_4
    new-instance v18, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemIcon;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v11, v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemIcon;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 135
    .restart local v18    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    goto :goto_4

    .line 137
    .end local v18    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    :pswitch_5
    new-instance v18, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemShape;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v11, v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemShape;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 138
    .restart local v18    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    goto :goto_4

    .line 140
    .end local v18    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    :pswitch_6
    new-instance v18, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemText;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v11, v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapItemText;-><init>(Ljava/lang/String;Ljava/lang/String;[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;)V

    .line 141
    .restart local v18    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    goto :goto_4

    .line 158
    .end local v9    # "i":I
    .end local v13    # "itemType":I
    .end local v14    # "lineArray":[Ljava/lang/String;
    .end local v18    # "node":Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    .end local v19    # "pointArray":[Lcom/eventgenie/android/mapping/d2/containers/CoordinateSet;
    .end local v22    # "type":I
    .end local v23    # "version":I
    .end local v24    # "x":D
    .end local v26    # "y":D
    :cond_5
    invoke-virtual {v10}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "^ MAP2D-ShapesParser: Done - "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    move-object/from16 v15, p1

    .line 166
    .end local p1    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .restart local v15    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    goto/16 :goto_3

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 129
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static populateOtherItemFields(Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;J)V
    .locals 3
    .param p0, "node"    # Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;
    .param p1, "hallId"    # J

    .prologue
    const/4 v1, 0x0

    .line 179
    const-string v0, "-1"

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setFillColor(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getType()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->getVersion()I

    move-result v0

    if-nez v0, :cond_0

    .line 183
    const-string v0, "-1"

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setTextColor(Ljava/lang/String;)V

    .line 188
    :goto_0
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setFavourite(Z)V

    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setHallId(J)V

    .line 190
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setzOrder(I)V

    .line 191
    invoke-virtual {p0, v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setRotation(I)V

    .line 192
    return-void

    .line 185
    :cond_0
    const-string v0, "-1"

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapDrawableItem;->setTextColor(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected parseFile(Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;Ljava/io/InputStream;J)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .locals 1
    .param p1, "mapItemStore"    # Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .param p2, "shapesFile"    # Ljava/io/InputStream;
    .param p3, "hallId"    # J

    .prologue
    .line 170
    const-string v0, "^ MAP2D-ShapesParser: Parsing Shape file for locations..."

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/eventgenie/android/mapping/d2/parsers/FileShapesV2Parser;->parse(Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;Ljava/io/InputStream;J)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    move-result-object v0

    return-object v0
.end method

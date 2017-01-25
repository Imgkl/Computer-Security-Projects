.class Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;
.super Ljava/lang/Object;
.source "NaviParser.java"


# static fields
.field private static final HALL_ID:I = 0x1

.field private static final LINE_TYPE:I = 0x0

.field private static final NAVI_FIELD_DELIMITER:Ljava/lang/String; = "::"

.field private static final NODE_ID:I = 0x1

.field private static final NODE_NAME:I = 0x2

.field private static final NODE_X:I = 0x3

.field private static final NODE_Y:I = 0x4

.field private static final WARP_ID:I = 0x1

.field private static final WARP_NAME:I = 0x3

.field private static final WARP_WEIGHT:I = 0x2

.field private static final WARP_X:I = 0x4

.field private static final WARP_Y:I = 0x5


# instance fields
.field private mAdjecencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mField:Ljava/lang/String;

.field private mNaviId:Ljava/lang/String;

.field private mNodeName:Ljava/lang/String;

.field private mWarpWeight:J

.field private mXCoord:D

.field private mYCoord:D

.field private myMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

.field private tmpNode:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mXCoord:D

    .line 73
    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mYCoord:D

    .line 83
    return-void
.end method

.method private static calculateCombiId(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .param p0, "naviId"    # Ljava/lang/String;
    .param p1, "hallId"    # J

    .prologue
    .line 86
    const-string/jumbo v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    .end local p0    # "naviId":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "naviId":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private clearVariables()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x1

    .line 93
    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mXCoord:D

    .line 94
    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mYCoord:D

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mNaviId:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mNodeName:Ljava/lang/String;

    .line 98
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mWarpWeight:J

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mAdjecencies:Ljava/util/Set;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mField:Ljava/lang/String;

    .line 101
    return-void
.end method

.method private parseEgnFile(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "naviFile"    # Ljava/io/InputStream;

    .prologue
    .line 117
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 118
    .local v3, "in":Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 119
    .local v0, "br":Ljava/io/BufferedReader;
    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 123
    .local v2, "hallId":Ljava/lang/Long;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "strLine":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 124
    const-string v5, "N::"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "n::"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 125
    :cond_1
    invoke-direct {p0, v4, v2}, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->parseNaviLine(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "hallId":Ljava/lang/Long;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v4    # "strLine":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ MAP2D-naviParser: ERROR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 139
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->myMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    .line 141
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 127
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "hallId":Ljava/lang/Long;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "strLine":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v5, "W::"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "w::"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 128
    :cond_3
    invoke-direct {p0, v4, v2}, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->parseWarpLine(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 130
    :cond_4
    const-string v5, "H::"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "h::"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    :cond_5
    invoke-static {v4}, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->parseHallLine(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    .line 135
    :cond_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "^ MAP2D-naviParser: Done! - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->myMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    invoke-virtual {v6}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->getMapItemCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static parseHallLine(Ljava/lang/String;)J
    .locals 5
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 144
    const-string v1, "::"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "lineArray":[Ljava/lang/String;
    array-length v1, v0

    const/4 v4, 0x2

    if-lt v1, v4, :cond_0

    .line 147
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/mapping/d2/parsers/Helper;->tryLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 149
    :cond_0
    return-wide v2
.end method

.method private parseNaviLine(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 12
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "hallId"    # Ljava/lang/Long;

    .prologue
    const-wide/16 v4, 0x1

    .line 154
    const-string v0, "::"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 155
    .local v10, "lineArray":[Ljava/lang/String;
    array-length v9, v10

    .line 157
    .local v9, "length":I
    const/4 v0, 0x5

    if-lt v9, v0, :cond_2

    .line 158
    invoke-direct {p0}, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->clearVariables()V

    .line 159
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 160
    aget-object v0, v10, v8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/eventgenie/android/mapping/d2/parsers/Helper;->tryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mField:Ljava/lang/String;

    .line 162
    packed-switch v8, :pswitch_data_0

    .line 178
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mAdjecencies:Ljava/util/Set;

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mField:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->calculateCombiId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    :goto_1
    :pswitch_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 166
    :pswitch_1
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mField:Ljava/lang/String;

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mNaviId:Ljava/lang/String;

    goto :goto_1

    .line 169
    :pswitch_2
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mField:Ljava/lang/String;

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mNodeName:Ljava/lang/String;

    goto :goto_1

    .line 172
    :pswitch_3
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mField:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/eventgenie/android/mapping/d2/parsers/Helper;->tryDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mXCoord:D

    goto :goto_1

    .line 175
    :pswitch_4
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mField:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/eventgenie/android/mapping/d2/parsers/Helper;->tryDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mYCoord:D

    goto :goto_1

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mNaviId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mNaviId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mXCoord:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mYCoord:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_2

    .line 185
    iget-object v11, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mNodeName:Ljava/lang/String;

    .line 186
    .local v11, "testName":Ljava/lang/String;
    const-string v0, "b."

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const-string v0, "b."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->myMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    invoke-virtual {v0, v11}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->containsMapItem(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->myMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    invoke-virtual {v0, v11}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->getMapItem(Ljava/lang/String;)Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->tmpNode:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .line 192
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->tmpNode:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    iget-wide v2, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mXCoord:D

    iget-wide v4, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mYCoord:D

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->setNavigationCoordinates(DD)V

    .line 193
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->tmpNode:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mNaviId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->calculateCombiId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->setNaviId(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->tmpNode:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mAdjecencies:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->setAdjacencies(Ljava/util/Set;)V

    .line 202
    .end local v8    # "i":I
    .end local v11    # "testName":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 196
    .restart local v8    # "i":I
    .restart local v11    # "testName":Ljava/lang/String;
    :cond_3
    new-instance v0, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointNavi;

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mNaviId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->calculateCombiId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mXCoord:D

    iget-wide v6, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mYCoord:D

    invoke-direct/range {v0 .. v7}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointNavi;-><init>(Ljava/lang/String;JDD)V

    iput-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->tmpNode:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .line 197
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->tmpNode:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mAdjecencies:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->setAdjacencies(Ljava/util/Set;)V

    .line 198
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->myMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mNaviId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->calculateCombiId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->tmpNode:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->addMapItem(Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;)V

    goto :goto_2

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private parseWarpLine(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 14
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "hallId"    # Ljava/lang/Long;

    .prologue
    .line 206
    const-string v1, "::"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 207
    .local v13, "lineArray":[Ljava/lang/String;
    array-length v12, v13

    .line 209
    .local v12, "length":I
    const/4 v1, 0x5

    if-lt v12, v1, :cond_2

    .line 210
    invoke-direct {p0}, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->clearVariables()V

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v12, :cond_0

    .line 213
    aget-object v1, v13, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/eventgenie/android/mapping/d2/parsers/Helper;->tryString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mField:Ljava/lang/String;

    .line 215
    packed-switch v0, :pswitch_data_0

    .line 234
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mAdjecencies:Ljava/util/Set;

    iget-object v3, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mField:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->calculateCombiId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :pswitch_1
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mField:Ljava/lang/String;

    iput-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mNaviId:Ljava/lang/String;

    goto :goto_1

    .line 222
    :pswitch_2
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mField:Ljava/lang/String;

    const-wide/16 v4, 0xa

    invoke-static {v1, v4, v5}, Lcom/eventgenie/android/mapping/d2/parsers/Helper;->tryLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mWarpWeight:J

    goto :goto_1

    .line 225
    :pswitch_3
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mField:Ljava/lang/String;

    iput-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mNodeName:Ljava/lang/String;

    goto :goto_1

    .line 228
    :pswitch_4
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mField:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v1, v4, v5}, Lcom/eventgenie/android/mapping/d2/parsers/Helper;->tryDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mXCoord:D

    goto :goto_1

    .line 231
    :pswitch_5
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mField:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v1, v4, v5}, Lcom/eventgenie/android/mapping/d2/parsers/Helper;->tryDouble(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mYCoord:D

    goto :goto_1

    .line 240
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mNaviId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mNaviId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-wide v4, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mXCoord:D

    const-wide/16 v6, 0x1

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_2

    iget-wide v4, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mYCoord:D

    const-wide/16 v6, 0x1

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_2

    .line 242
    iget-object v2, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mNodeName:Ljava/lang/String;

    .line 243
    .local v2, "testName":Ljava/lang/String;
    const-string/jumbo v1, "w."

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    const-string/jumbo v1, "w."

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 247
    :cond_1
    new-instance v1, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;

    iget-object v3, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mNaviId:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->calculateCombiId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mWarpWeight:J

    iget-wide v8, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mXCoord:D

    iget-wide v10, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mYCoord:D

    invoke-direct/range {v1 .. v11}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/MapPointWarp;-><init>(Ljava/lang/String;Ljava/lang/String;JJDD)V

    iput-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->tmpNode:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    .line 248
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->tmpNode:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    iget-object v3, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mAdjecencies:Ljava/util/Set;

    invoke-virtual {v1, v3}, Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;->setAdjacencies(Ljava/util/Set;)V

    .line 249
    iget-object v1, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->myMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    iget-object v3, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->mNaviId:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->calculateCombiId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->tmpNode:Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;

    invoke-virtual {v1, v3, v4}, Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;->addMapItem(Ljava/lang/String;Lcom/eventgenie/android/mapping/d2/containers/mapItems/abstracts/AbstractMapItem;)V

    .line 252
    .end local v0    # "i":I
    .end local v2    # "testName":Ljava/lang/String;
    :cond_2
    return-void

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected Parse(Ljava/io/InputStream;Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;)Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    .locals 1
    .param p1, "naviFile"    # Ljava/io/InputStream;
    .param p2, "mapItemStore"    # Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    .prologue
    .line 104
    const-string v0, "^ MAP2D-naviParser: Reading EgNavi file..."

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 105
    iput-object p2, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->myMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    .line 107
    invoke-direct {p0, p1}, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->parseEgnFile(Ljava/io/InputStream;)V

    .line 109
    iget-object v0, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->myMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    if-eqz v0, :cond_0

    .line 110
    iget-object p2, p0, Lcom/eventgenie/android/mapping/d2/parsers/NaviParser;->myMapItemStore:Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;

    .line 112
    .end local p2    # "mapItemStore":Lcom/eventgenie/android/mapping/d2/containers/MapItemStore;
    :cond_0
    return-object p2
.end method

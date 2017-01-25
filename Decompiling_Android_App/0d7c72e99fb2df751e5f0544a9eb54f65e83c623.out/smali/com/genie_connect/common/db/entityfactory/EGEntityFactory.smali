.class public Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;
.super Ljava/lang/Object;
.source "EGEntityFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/common/db/entityfactory/EGEntityFactory$1;
    }
.end annotation


# static fields
.field private static final NULL:Ljava/lang/String; = "null"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method public static toString([Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/String;
    .locals 7
    .param p0, "array"    # [Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 302
    if-nez p0, :cond_0

    .line 303
    const-string v6, "null"

    .line 318
    :goto_0
    return-object v6

    .line 306
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v6, "GenieEntity["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const/4 v1, 0x1

    .line 310
    .local v1, "firstRun":Z
    move-object v0, p0

    .local v0, "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 311
    .local v3, "item":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    if-nez v1, :cond_1

    .line 312
    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    :cond_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 315
    const/4 v1, 0x0

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 317
    .end local v3    # "item":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :cond_2
    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method public createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .locals 1
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v0

    return-object v0
.end method

.method public createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .locals 3
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "json"    # Lcom/genie_connect/common/platform/json/IJsonObject;

    .prologue
    .line 103
    if-nez p1, :cond_1

    .line 104
    const/4 v0, 0x0

    .line 262
    .local v0, "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :goto_0
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 263
    invoke-virtual {v0, p2}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->fromJSON(Lcom/genie_connect/common/platform/json/IJsonObject;)V

    .line 266
    :cond_0
    return-object v0

    .line 106
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_1
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 258
    const/4 v0, 0x0

    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 108
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_0
    new-instance v0, Lcom/genie_connect/common/db/model/ActivityStreamPost;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;-><init>()V

    .line 109
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 111
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_1
    new-instance v0, Lcom/genie_connect/common/db/model/AdBanner;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/AdBanner;-><init>()V

    .line 112
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 114
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_2
    new-instance v0, Lcom/genie_connect/common/db/model/AdCampaign;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/AdCampaign;-><init>()V

    .line 115
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 117
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_3
    new-instance v0, Lcom/genie_connect/common/db/model/AgendaItem;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/AgendaItem;-><init>()V

    .line 118
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 120
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_4
    new-instance v0, Lcom/genie_connect/common/db/model/App;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/App;-><init>()V

    .line 121
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 123
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_5
    new-instance v0, Lcom/genie_connect/common/db/model/AppRef;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/AppRef;-><init>()V

    .line 124
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 126
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_6
    new-instance v0, Lcom/genie_connect/common/db/model/Article;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Article;-><init>()V

    .line 127
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 129
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_7
    new-instance v0, Lcom/genie_connect/common/db/model/ArticleGroup;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/ArticleGroup;-><init>()V

    .line 130
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 132
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_8
    new-instance v0, Lcom/genie_connect/common/db/model/DataVersion;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/DataVersion;-><init>()V

    .line 133
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 135
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_9
    new-instance v0, Lcom/genie_connect/common/db/model/Downloadable;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Downloadable;-><init>()V

    .line 136
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 138
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_a
    new-instance v0, Lcom/genie_connect/common/db/model/EventDay;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/EventDay;-><init>()V

    .line 139
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 141
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_b
    new-instance v0, Lcom/genie_connect/common/db/model/Exhibitor;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Exhibitor;-><init>()V

    .line 142
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 144
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_c
    new-instance v0, Lcom/genie_connect/common/db/model/ExhibitorType;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/ExhibitorType;-><init>()V

    .line 145
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 147
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_d
    new-instance v0, Lcom/genie_connect/common/db/model/FavouriteDownloadable;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/FavouriteDownloadable;-><init>()V

    .line 148
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 150
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_e
    new-instance v0, Lcom/genie_connect/common/db/model/FavouriteSession;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/FavouriteSession;-><init>()V

    .line 151
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 153
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_f
    new-instance v0, Lcom/genie_connect/common/db/model/FavouriteSubSession;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/FavouriteSubSession;-><init>()V

    .line 154
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 156
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_10
    new-instance v0, Lcom/genie_connect/common/db/model/FavouriteExhibitor;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/FavouriteExhibitor;-><init>()V

    .line 157
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 159
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_11
    new-instance v0, Lcom/genie_connect/common/db/model/FavouritePoi;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/FavouritePoi;-><init>()V

    .line 160
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 162
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_12
    new-instance v0, Lcom/genie_connect/common/db/model/FavouriteProduct;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/FavouriteProduct;-><init>()V

    .line 163
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 165
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_13
    new-instance v0, Lcom/genie_connect/common/db/model/FavouriteSpeaker;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/FavouriteSpeaker;-><init>()V

    .line 166
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 168
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_14
    new-instance v0, Lcom/genie_connect/common/db/model/FavouriteVisitor;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/FavouriteVisitor;-><init>()V

    .line 169
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 171
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_15
    new-instance v0, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/FavouriteActivityStreamPost;-><init>()V

    .line 172
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 174
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_16
    new-instance v0, Lcom/genie_connect/common/db/model/Game;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Game;-><init>()V

    .line 175
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 177
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_17
    new-instance v0, Lcom/genie_connect/common/db/model/InfoPage;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/InfoPage;-><init>()V

    .line 178
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 180
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_18
    new-instance v0, Lcom/genie_connect/common/db/model/Location;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Location;-><init>()V

    .line 181
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 183
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_19
    new-instance v0, Lcom/genie_connect/common/db/model/GenieMap;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/GenieMap;-><init>()V

    .line 184
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 186
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_1a
    new-instance v0, Lcom/genie_connect/common/db/model/Meeting;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Meeting;-><init>()V

    .line 187
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 189
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_1b
    new-instance v0, Lcom/genie_connect/common/db/model/Message;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Message;-><init>()V

    .line 190
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 192
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_1c
    new-instance v0, Lcom/genie_connect/common/db/model/Note;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Note;-><init>()V

    .line 193
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 195
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_1d
    new-instance v0, Lcom/genie_connect/common/db/model/PermissionGroup;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/PermissionGroup;-><init>()V

    .line 196
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 198
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_1e
    new-instance v0, Lcom/genie_connect/common/db/model/Poi;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Poi;-><init>()V

    .line 199
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 201
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_1f
    new-instance v0, Lcom/genie_connect/common/db/model/PlayerGame;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/PlayerGame;-><init>()V

    .line 202
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 204
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_20
    new-instance v0, Lcom/genie_connect/common/db/model/Product;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Product;-><init>()V

    .line 205
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 207
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_21
    new-instance v0, Lcom/genie_connect/common/db/model/QrCodeCustom;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/QrCodeCustom;-><init>()V

    .line 208
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 210
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_22
    new-instance v0, Lcom/genie_connect/common/db/model/Session;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Session;-><init>()V

    .line 211
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 213
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_23
    new-instance v0, Lcom/genie_connect/common/db/model/SessionCategory;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/SessionCategory;-><init>()V

    .line 214
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 216
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_24
    new-instance v0, Lcom/genie_connect/common/db/model/Speaker;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Speaker;-><init>()V

    .line 217
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 219
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_25
    new-instance v0, Lcom/genie_connect/common/db/model/Subsession;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Subsession;-><init>()V

    .line 220
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 222
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_26
    new-instance v0, Lcom/genie_connect/common/db/model/Tag;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Tag;-><init>()V

    .line 223
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 225
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_27
    new-instance v0, Lcom/genie_connect/common/db/model/TagsV2;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/TagsV2;-><init>()V

    .line 226
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 228
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_28
    new-instance v0, Lcom/genie_connect/common/db/model/Track;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Track;-><init>()V

    .line 229
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 231
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_29
    new-instance v0, Lcom/genie_connect/common/db/model/Trophy;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Trophy;-><init>()V

    .line 232
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 234
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_2a
    new-instance v0, Lcom/genie_connect/common/db/model/Visitor;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Visitor;-><init>()V

    .line 235
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 237
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_2b
    new-instance v0, Lcom/genie_connect/common/db/model/VisitorGroup;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/VisitorGroup;-><init>()V

    .line 238
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 240
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_2c
    new-instance v0, Lcom/genie_connect/common/db/model/MapFacility;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/MapFacility;-><init>()V

    .line 241
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 243
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_2d
    new-instance v0, Lcom/genie_connect/common/db/model/MapZone;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/MapZone;-><init>()V

    .line 244
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 246
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_2e
    new-instance v0, Lcom/genie_connect/common/db/model/InAppAction;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/InAppAction;-><init>()V

    .line 247
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 249
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_2f
    new-instance v0, Lcom/genie_connect/common/db/model/Hotspot;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Hotspot;-><init>()V

    .line 250
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 252
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_30
    new-instance v0, Lcom/genie_connect/common/db/model/Survey;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Survey;-><init>()V

    .line 253
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 255
    .end local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :pswitch_31
    new-instance v0, Lcom/genie_connect/common/db/model/Visitorsurvey;

    invoke-direct {v0}, Lcom/genie_connect/common/db/model/Visitorsurvey;-><init>()V

    .line 256
    .restart local v0    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto/16 :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method

.method public createSyncableInstance(Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/common/db/entityfactory/EGEntity;
    .locals 6
    .param p1, "json"    # Lcom/genie_connect/common/platform/json/IJsonObject;

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 272
    const/4 v3, 0x0

    .line 298
    .local v3, "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :goto_0
    return-object v3

    .line 274
    .end local v3    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_0
    const-string v4, "_id"

    invoke-interface {p1, v4}, Lcom/genie_connect/common/platform/json/IJsonObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "_id":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 287
    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "array":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v4, v1

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    .line 289
    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-static {v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->fromString(Ljava/lang/String;)Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v2

    .line 290
    .local v2, "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    invoke-virtual {p0, v2, p1}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v3

    .line 291
    .restart local v3    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 292
    .end local v2    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v3    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0

    .line 295
    .end local v1    # "array":[Ljava/lang/String;
    .end local v3    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "methodResult":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    goto :goto_0
.end method

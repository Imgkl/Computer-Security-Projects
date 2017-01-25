.class public Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;
.super Ljava/lang/Object;
.source "CardAdapterCommonStaticMethods.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

.method public static clearAndReloadEntity(Lcom/eventgenie/android/container/EntityWrapper;Landroid/widget/ViewFlipper;ILandroid/content/Context;)V
    .locals 1
    .param p0, "entity"    # Lcom/eventgenie/android/container/EntityWrapper;
    .param p1, "viewFlipper"    # Landroid/widget/ViewFlipper;
    .param p2, "i"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    if-nez p2, :cond_1

    .line 58
    invoke-static {p1, p0}, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;->flipContent(Landroid/widget/ViewFlipper;Lcom/eventgenie/android/container/EntityWrapper;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 61
    invoke-static {p1, p0}, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;->flipContent(Landroid/widget/ViewFlipper;Lcom/eventgenie/android/container/EntityWrapper;)V

    goto :goto_0

    .line 63
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 64
    invoke-static {p1, p0}, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;->flipContent(Landroid/widget/ViewFlipper;Lcom/eventgenie/android/container/EntityWrapper;)V

    goto :goto_0

    .line 66
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 67
    invoke-static {p1, p0}, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;->flipContent(Landroid/widget/ViewFlipper;Lcom/eventgenie/android/container/EntityWrapper;)V

    goto :goto_0
.end method

.method public static clearAndReloadImage(Ljava/lang/String;Landroid/widget/ViewFlipper;ILandroid/content/Context;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "vf"    # Landroid/widget/ViewFlipper;
    .param p2, "i"    # I
    .param p3, "c"    # Landroid/content/Context;

    .prologue
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ CARDADAPTER clearAndReloadImage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 34
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "iv":Landroid/widget/ImageView;
    if-nez p2, :cond_2

    .line 37
    sget v1, Lcom/eventgenie/android/R$id;->content_image1:I

    invoke-virtual {p1, v1}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "iv":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 48
    .restart local v0    # "iv":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 49
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    .line 51
    :cond_1
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$drawable;->container_shadow_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 53
    return-void

    .line 39
    :cond_2
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 40
    sget v1, Lcom/eventgenie/android/R$id;->content_image2:I

    invoke-virtual {p1, v1}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "iv":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0    # "iv":Landroid/widget/ImageView;
    goto :goto_0

    .line 42
    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    .line 43
    sget v1, Lcom/eventgenie/android/R$id;->content_image3:I

    invoke-virtual {p1, v1}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "iv":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0    # "iv":Landroid/widget/ImageView;
    goto :goto_0

    .line 45
    :cond_4
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 46
    sget v1, Lcom/eventgenie/android/R$id;->content_image4:I

    invoke-virtual {p1, v1}, Landroid/widget/ViewFlipper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "iv":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0    # "iv":Landroid/widget/ImageView;
    goto :goto_0
.end method

.method public static flipContent(Landroid/widget/ViewFlipper;Lcom/eventgenie/android/container/EntityWrapper;)V
    .locals 1
    .param p0, "vf"    # Landroid/widget/ViewFlipper;
    .param p1, "entity"    # Lcom/eventgenie/android/container/EntityWrapper;

    .prologue
    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 73
    invoke-static {p0, p1}, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;->setContent(Landroid/view/View;Lcom/eventgenie/android/container/EntityWrapper;)V

    .line 74
    return-void
.end method

.method public static getItemViewTypeFromObject(Lcom/genie_connect/common/db/model/ActivityStreamPost;)I
    .locals 10
    .param p0, "activitystreampost"    # Lcom/genie_connect/common/db/model/ActivityStreamPost;

    .prologue
    const/4 v8, 0x4

    .line 187
    const/4 v7, 0x0

    .line 188
    .local v7, "length":I
    iget-object v9, p0, Lcom/genie_connect/common/db/model/ActivityStreamPost;->id:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 191
    .local v4, "id":J
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getPhotos()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getPhotos()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v7, v9

    .line 194
    :cond_0
    if-lt v7, v8, :cond_2

    .line 209
    :cond_1
    :goto_0
    return v8

    .line 198
    :cond_2
    sget-object v0, Lcom/genie_connect/android/db/access/DbActivitystreampost;->supportedEntities:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .local v0, "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_4

    aget-object v1, v0, v3

    .line 199
    .local v1, "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    invoke-virtual {p0, v1}, Lcom/genie_connect/common/db/model/ActivityStreamPost;->getAssociatedEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/util/ArrayList;

    move-result-object v2

    .line 200
    .local v2, "entityIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v2, :cond_3

    .line 201
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v7, v9

    .line 203
    :cond_3
    if-ge v7, v8, :cond_1

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .end local v2    # "entityIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4
    move v8, v7

    .line 209
    goto :goto_0
.end method

.method public static getNumberOfPhotos([Ljava/lang/String;Ljava/util/ArrayList;)I
    .locals 2
    .param p0, "photos"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/eventgenie/android/container/CursorEntityWrapper;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "entityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/container/CursorEntityWrapper;>;"
    const/4 v0, 0x0

    .line 175
    .local v0, "ret":I
    if-eqz p0, :cond_0

    .line 176
    array-length v0, p0

    .line 178
    :cond_0
    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 182
    :cond_1
    return v0
.end method

.method public static setColorForSession(Landroid/view/View;Landroid/content/res/Resources;J)V
    .locals 20
    .param p0, "parentView"    # Landroid/view/View;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "sessionId"    # J

    .prologue
    .line 77
    sget v13, Lcom/eventgenie/android/R$id;->ivLogo:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 78
    .local v9, "ivLogo":Landroid/widget/ImageView;
    sget v13, Lcom/eventgenie/android/R$id;->tvContent:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 79
    .local v10, "tvContent":Landroid/widget/TextView;
    sget v13, Lcom/eventgenie/android/R$id;->tvWhen:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 80
    .local v11, "tvWhen":Landroid/widget/TextView;
    sget v13, Lcom/eventgenie/android/R$drawable;->ic_gm_tab_agenda:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 81
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v13

    invoke-virtual {v13}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v13

    invoke-virtual {v13}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSessionsDb()Lcom/genie_connect/android/db/access/DbSessions;

    move-result-object v13

    move-wide/from16 v0, p2

    invoke-virtual {v13, v0, v1}, Lcom/genie_connect/android/db/access/DbSessions;->getSession(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v8

    .line 83
    .local v8, "ec":Luk/co/alt236/easycursor/EasyCursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v13

    if-nez v13, :cond_1

    .line 84
    :cond_0
    sget v13, Lcom/eventgenie/android/R$color;->LightBlue:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    :goto_0
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    return-void

    .line 88
    :cond_1
    :try_start_0
    const-string v13, "colour"

    invoke-interface {v8, v13}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 89
    .local v3, "color":I
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v13

    int-to-long v14, v13

    const-wide/16 v16, 0x12b

    mul-long v14, v14, v16

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v13

    int-to-long v0, v13

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x24b

    mul-long v16, v16, v18

    add-long v14, v14, v16

    const-wide/16 v16, 0x72

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    int-to-long v0, v13

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    add-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    div-long v4, v14, v16

    .line 90
    .local v4, "colorResult":J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "^ CardAdapterCommonStaticMethods setColorForSession: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 91
    const-wide/16 v14, 0x80

    cmp-long v13, v4, v14

    if-ltz v13, :cond_2

    .line 92
    sget v13, Lcom/eventgenie/android/R$color;->Black:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 93
    .local v2, "blackColor":I
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .end local v2    # "blackColor":I
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v3    # "color":I
    .end local v4    # "colorResult":J
    :catch_0
    move-exception v7

    .line 106
    .local v7, "e":Ljava/lang/Exception;
    sget v13, Lcom/eventgenie/android/R$color;->White:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 107
    .local v12, "whiteColor":I
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 98
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v12    # "whiteColor":I
    .restart local v3    # "color":I
    .restart local v4    # "colorResult":J
    :cond_2
    :try_start_1
    sget v13, Lcom/eventgenie/android/R$color;->White:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    .line 99
    .restart local v12    # "whiteColor":I
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static setContent(Landroid/view/View;Lcom/eventgenie/android/container/EntityWrapper;)V
    .locals 10
    .param p0, "parentView"    # Landroid/view/View;
    .param p1, "entity"    # Lcom/eventgenie/android/container/EntityWrapper;

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 118
    .local v1, "res":Landroid/content/res/Resources;
    sget v7, Lcom/eventgenie/android/R$id;->ivLogo:I

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 119
    .local v0, "ivLogo":Landroid/widget/ImageView;
    sget v7, Lcom/eventgenie/android/R$id;->tvContent:I

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 120
    .local v3, "tvContent":Landroid/widget/TextView;
    sget v7, Lcom/eventgenie/android/R$id;->tvWhen:I

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 121
    .local v6, "tvWhen":Landroid/widget/TextView;
    sget-object v7, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 166
    :goto_0
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v7

    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getAppContext()Lcom/eventgenie/android/EventGenieApplication;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v8

    sget-object v9, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v7, v8, v9}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void

    .line 123
    :pswitch_0
    sget v7, Lcom/eventgenie/android/R$color;->DarkRed:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 124
    sget v7, Lcom/eventgenie/android/R$drawable;->ic_gm_tab_exhibitor:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 127
    :pswitch_1
    sget v7, Lcom/eventgenie/android/R$color;->DarkGray:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 128
    sget v7, Lcom/eventgenie/android/R$drawable;->ic_gm_tab_speakers:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 131
    :pswitch_2
    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getId()J

    move-result-wide v8

    invoke-static {p0, v1, v8, v9}, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;->setColorForSession(Landroid/view/View;Landroid/content/res/Resources;J)V

    goto :goto_0

    .line 134
    :pswitch_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSubSessions()Lcom/genie_connect/android/db/access/DbSubsessions;

    move-result-object v7

    invoke-interface {p1}, Lcom/eventgenie/android/container/EntityWrapper;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/genie_connect/android/db/access/DbSubsessions;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    .line 138
    .local v2, "sessionForSubsession":Luk/co/alt236/easycursor/EasyCursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 139
    const-string v7, "session"

    invoke-interface {v2, v7}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 140
    .local v4, "sessionId":J
    invoke-static {p0, v1, v4, v5}, Lcom/eventgenie/android/adapters/newsandsocial/CardAdapterCommonStaticMethods;->setColorForSession(Landroid/view/View;Landroid/content/res/Resources;J)V

    .line 145
    .end local v4    # "sessionId":J
    :goto_1
    sget v7, Lcom/eventgenie/android/R$drawable;->ic_gm_tab_agenda:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 143
    :cond_0
    sget v7, Lcom/eventgenie/android/R$color;->LightBlue:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 148
    .end local v2    # "sessionForSubsession":Luk/co/alt236/easycursor/EasyCursor;
    :pswitch_4
    sget v7, Lcom/eventgenie/android/R$color;->DarkSeaGreen:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 149
    sget v7, Lcom/eventgenie/android/R$drawable;->ic_gm_tab_product:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 152
    :pswitch_5
    sget v7, Lcom/eventgenie/android/R$color;->Purple:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 153
    sget v7, Lcom/eventgenie/android/R$drawable;->ic_gm_tab_download:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 156
    :pswitch_6
    sget v7, Lcom/eventgenie/android/R$color;->DarkGreen:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 157
    sget v7, Lcom/eventgenie/android/R$drawable;->ic_gm_tab_checkin:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 160
    :pswitch_7
    sget v7, Lcom/eventgenie/android/R$color;->SpringGreen:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 161
    sget v7, Lcom/eventgenie/android/R$drawable;->ic_gm_tab_attendee:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 121
    nop

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
    .end packed-switch
.end method

.method public static setViewHolderIcons(Landroid/content/Context;Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;III)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "holder"    # Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;
    .param p2, "whiteColor"    # I
    .param p3, "blackColor"    # I
    .param p4, "grayColor"    # I

    .prologue
    .line 215
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->postType:Ljava/lang/String;

    sget-object v1, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->TWITTER:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->postType:Ljava/lang/String;

    sget-object v1, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->FACEBOOK:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    :cond_0
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvAuthor:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivDate:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_clock_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvContentTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 222
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvContentDetails:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bottomSeparatorLeft:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 224
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bottomSeparatorRight:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 226
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->postType:Ljava/lang/String;

    sget-object v1, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->TWITTER:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->llBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/eventgenie/android/R$drawable;->container_shadow_twitter:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 228
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibPostTypeThumbnail:Landroid/widget/ImageButton;

    sget v1, Lcom/eventgenie/android/R$drawable;->post_icon_twitter_white:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 234
    :goto_0
    iget-boolean v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->isFav:Z

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivFav:Landroid/widget/ImageView;

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_fav_on_white:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    :goto_1
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivShare:Landroid/widget/ImageView;

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_share_white:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivComment:Landroid/widget/ImageView;

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_dark_chat:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    :goto_2
    return-void

    .line 231
    :cond_1
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->llBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/eventgenie/android/R$drawable;->container_shadow_facebook:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 232
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibPostTypeThumbnail:Landroid/widget/ImageButton;

    sget v1, Lcom/eventgenie/android/R$drawable;->post_icon_facebook_white:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 238
    :cond_2
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivFav:Landroid/widget/ImageView;

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_fav_off_white:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 244
    :cond_3
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->postType:Ljava/lang/String;

    sget-object v1, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->RSS:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibPostTypeThumbnail:Landroid/widget/ImageButton;

    sget v1, Lcom/eventgenie/android/R$drawable;->post_icon_rss:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 265
    :goto_3
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->llBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 266
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvAuthor:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvDate:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvContentTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->tvContentDetails:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->llBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/eventgenie/android/R$drawable;->container_shadow_white:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 271
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bottomSeparatorLeft:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 272
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->bottomSeparatorRight:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 273
    iget-boolean v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->isFav:Z

    if-eqz v0, :cond_a

    .line 274
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivFav:Landroid/widget/ImageView;

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_fav_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 279
    :goto_4
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivShare:Landroid/widget/ImageView;

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_share:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivComment:Landroid/widget/ImageView;

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_light_chat:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 247
    :cond_4
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->postType:Ljava/lang/String;

    sget-object v1, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->FLICKR:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 248
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibPostTypeThumbnail:Landroid/widget/ImageButton;

    sget v1, Lcom/eventgenie/android/R$drawable;->post_icon_flickr:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3

    .line 250
    :cond_5
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->postType:Ljava/lang/String;

    sget-object v1, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->FACEBOOK:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 251
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibPostTypeThumbnail:Landroid/widget/ImageButton;

    sget v1, Lcom/eventgenie/android/R$drawable;->post_icon_facebook:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3

    .line 253
    :cond_6
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->postType:Ljava/lang/String;

    sget-object v1, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->INSTAGRAM:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 254
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibPostTypeThumbnail:Landroid/widget/ImageButton;

    sget v1, Lcom/eventgenie/android/R$drawable;->post_icon_instagram:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_3

    .line 256
    :cond_7
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->postType:Ljava/lang/String;

    sget-object v1, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->YOUTUBE:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 257
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibPostTypeThumbnail:Landroid/widget/ImageButton;

    sget v1, Lcom/eventgenie/android/R$drawable;->post_icon_youtube:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_3

    .line 259
    :cond_8
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->postType:Ljava/lang/String;

    sget-object v1, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->GOOGLEPLUS:Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/model/ActivityStreamPost$TYPE;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 260
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibPostTypeThumbnail:Landroid/widget/ImageButton;

    sget v1, Lcom/eventgenie/android/R$drawable;->post_icon_google:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_3

    .line 263
    :cond_9
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ibPostTypeThumbnail:Landroid/widget/ImageButton;

    sget v1, Lcom/eventgenie/android/R$drawable;->post_icon_user:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_3

    .line 277
    :cond_a
    iget-object v0, p1, Lcom/eventgenie/android/adapters/newsandsocial/CardViewHolder;->ivFav:Landroid/widget/ImageView;

    sget v1, Lcom/eventgenie/android/R$drawable;->ic_action_fav_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4
.end method

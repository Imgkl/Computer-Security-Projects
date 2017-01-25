.class Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;
.super Ljava/lang/Object;
.source "MeetingV2BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Wrapper"
.end annotation


# instance fields
.field private company:Landroid/widget/TextView;

.field private favStar:Landroid/widget/ImageView;

.field private name:Landroid/widget/TextView;

.field private photo:Landroid/widget/ImageView;

.field private row:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "row"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->name:Landroid/widget/TextView;

    .line 284
    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->company:Landroid/widget/TextView;

    .line 285
    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->photo:Landroid/widget/ImageView;

    .line 286
    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->row:Landroid/view/View;

    .line 287
    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->favStar:Landroid/widget/ImageView;

    .line 290
    iput-object p1, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->row:Landroid/view/View;

    .line 291
    return-void
.end method

.method private optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    :cond_0
    const-string v0, ""

    .line 327
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getCompany()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->company:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->type:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->company:Landroid/widget/TextView;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->company:Landroid/widget/TextView;

    return-object v0
.end method

.method public getFavouriteStar()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->favStar:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->favourite_star:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->favStar:Landroid/widget/ImageView;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->favStar:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getName()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->name:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->name:Landroid/widget/TextView;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoto()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->photo:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->row:Landroid/view/View;

    sget v1, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->photo:Landroid/widget/ImageView;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->photo:Landroid/widget/ImageView;

    return-object v0
.end method

.method public populateExhibitor(Landroid/content/Context;Luk/co/alt236/easycursor/EasyCursor;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Luk/co/alt236/easycursor/EasyCursor;

    .prologue
    .line 332
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/FeatureConfig;->getExhibitorsFeatures()Lcom/genie_connect/android/db/config/features/ExhibitorFeatures;

    move-result-object v1

    .line 335
    .local v1, "features":Lcom/genie_connect/android/db/config/features/ExhibitorFeatures;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->getName()Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "name"

    invoke-interface {p2, v4}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->getCompany()Landroid/widget/TextView;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    const-string v3, "logoUrl"

    invoke-interface {p2, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "imageUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 342
    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/features/ExhibitorFeatures;->getDefaultThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "defaultThumbnail":Ljava/lang/String;
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 344
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 350
    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 351
    return-void

    .line 346
    :cond_1
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public populateVisitor(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visitorObject"    # Lorg/json/JSONObject;

    .prologue
    .line 354
    invoke-static {p1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, p1, v10}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v5

    .line 357
    .local v5, "netFeatures":Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    if-eqz p2, :cond_9

    .line 359
    const/4 v2, 0x0

    .line 360
    .local v2, "mugshotRestricted":Z
    const/4 v0, 0x0

    .line 362
    .local v0, "companyRestricted":Z
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getVisitorGroup()Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;

    move-result-object v3

    .line 363
    .local v3, "myVisitorGroup":Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;
    const-string/jumbo v9, "visitorGroup"

    invoke-virtual {p2, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 365
    .local v7, "targetVisitorGroup":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    if-eqz v7, :cond_0

    .line 366
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v9

    const-class v10, Lcom/genie_connect/android/repository/VisitorGroupRepository;

    invoke-virtual {v9, v10}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/genie_connect/android/repository/VisitorGroupRepository;

    invoke-virtual {v3}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "name"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/genie_connect/android/repository/VisitorGroupRepository;->getViewingRestrictions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 369
    .local v6, "restrictions":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;"
    sget-object v9, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->MugShot:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 370
    sget-object v9, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->CompanyName:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    invoke-interface {v6, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 373
    .end local v6    # "restrictions":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;"
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "title"

    invoke-direct {p0, p2, v10}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "firstNames"

    invoke-direct {p0, p2, v10}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "lastNames"

    invoke-direct {p0, p2, v10}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->getName()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->getFavouriteStar()Landroid/widget/ImageView;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    if-nez v0, :cond_2

    const-string v9, "companyName"

    invoke-static {v9, p2, v5}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 383
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->getCompany()Landroid/widget/TextView;

    move-result-object v9

    const-string v10, "companyName"

    invoke-direct {p0, p2, v10}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    :goto_0
    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->showThumbnail()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 390
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->getVersion()I

    move-result v9

    if-nez v9, :cond_4

    .line 393
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v9

    sget v10, Lcom/eventgenie/android/R$drawable;->profile_placeholder:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 394
    const-string v9, "mugShotUrl"

    invoke-static {v9, p2, v5}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v2, :cond_1

    .line 397
    const-string v9, "mugShotUrl"

    invoke-direct {p0, p2, v9}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 398
    .local v8, "value":Ljava/lang/String;
    invoke-static {v8}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 399
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v9

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 438
    .end local v0    # "companyRestricted":Z
    .end local v2    # "mugshotRestricted":Z
    .end local v3    # "myVisitorGroup":Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "targetVisitorGroup":Lorg/json/JSONObject;
    .end local v8    # "value":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 386
    .restart local v0    # "companyRestricted":Z
    .restart local v2    # "mugshotRestricted":Z
    .restart local v3    # "myVisitorGroup":Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v7    # "targetVisitorGroup":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->getCompany()Landroid/widget/TextView;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 401
    .restart local v8    # "value":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v9

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 406
    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v9

    sget v10, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    invoke-virtual {v5}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->getDefaultThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, "defaultThumbnail":Ljava/lang/String;
    const-string v9, "mugShotUrl"

    invoke-static {v9, p2, v5}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-nez v2, :cond_5

    .line 413
    const-string v9, "mugShotUrl"

    invoke-direct {p0, p2, v9}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 419
    .restart local v8    # "value":Ljava/lang/String;
    :goto_2
    invoke-static {v8}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 420
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v9

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 416
    .end local v8    # "value":Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "value":Ljava/lang/String;
    goto :goto_2

    .line 421
    :cond_6
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 422
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v9

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 424
    :cond_7
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v9

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 429
    .end local v1    # "defaultThumbnail":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->getPhoto()Landroid/widget/ImageView;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 434
    .end local v0    # "companyRestricted":Z
    .end local v2    # "mugshotRestricted":Z
    .end local v3    # "myVisitorGroup":Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;
    .end local v4    # "name":Ljava/lang/String;
    .end local v7    # "targetVisitorGroup":Lorg/json/JSONObject;
    :cond_9
    :try_start_0
    iget-object v9, p0, Lcom/eventgenie/android/activities/networking/v2/MeetingV2BaseActivity$Wrapper;->row:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 436
    :catch_0
    move-exception v9

    goto :goto_1
.end method

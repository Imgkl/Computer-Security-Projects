.class public Lcom/eventgenie/android/activities/mapping/MapVenueActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "MapVenueActivity.java"


# instance fields
.field private mImageLoader:Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;

.field private mMappingCfg:Lcom/genie_connect/android/db/config/widgets/MappingConfig;

.field private mPhoto:Landroid/widget/ImageView;

.field private mVenueAddress:Landroid/widget/TextView;

.field private mVenueEmail:Landroid/widget/TextView;

.field private mVenueName:Landroid/widget/TextView;

.field private mVenuePhone:Landroid/widget/TextView;

.field private mVenueWeb:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    return-void
.end method

.method private static validateView(Landroid/widget/TextView;)V
    .locals 2
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 118
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget v1, Lcom/eventgenie/android/R$layout;->activity_venue_details:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->VENUE:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v2, v3, v4}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMapping()Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mMappingCfg:Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    .line 68
    sget v1, Lcom/eventgenie/android/R$id;->venue_name:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mVenueName:Landroid/widget/TextView;

    .line 69
    sget v1, Lcom/eventgenie/android/R$id;->location:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mVenueAddress:Landroid/widget/TextView;

    .line 70
    sget v1, Lcom/eventgenie/android/R$id;->web:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mVenueWeb:Landroid/widget/TextView;

    .line 71
    sget v1, Lcom/eventgenie/android/R$id;->phone:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mVenuePhone:Landroid/widget/TextView;

    .line 72
    sget v1, Lcom/eventgenie/android/R$id;->email:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mVenueEmail:Landroid/widget/TextView;

    .line 74
    sget v1, Lcom/eventgenie/android/R$id;->venue_logo:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mPhoto:Landroid/widget/ImageView;

    .line 76
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mVenueName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mMappingCfg:Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->getVenueName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mVenueAddress:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mMappingCfg:Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->getFormattedAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mVenueWeb:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mMappingCfg:Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->getVenueWeb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mVenuePhone:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mMappingCfg:Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->getVenueTelephone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mVenueEmail:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mMappingCfg:Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->getVenueEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mVenueAddress:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->validateView(Landroid/widget/TextView;)V

    .line 83
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mVenueWeb:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->validateView(Landroid/widget/TextView;)V

    .line 84
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mVenuePhone:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->validateView(Landroid/widget/TextView;)V

    .line 85
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mVenueEmail:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->validateView(Landroid/widget/TextView;)V

    .line 87
    new-instance v1, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mImageLoader:Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;

    .line 89
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mMappingCfg:Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->getFormattedAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$drawable;->ic_action_light_directions:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->map_get_directions:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setupCustomButton1(Ljava/lang/Integer;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->displayCustomButton1(Z)V

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mMappingCfg:Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->getVenueThumbUrl()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 99
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mImageLoader:Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;

    iget-object v2, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 103
    :goto_1
    sget v1, Lcom/eventgenie/android/R$id;->details_header:I

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->exhibitor_contact:I

    invoke-static {v1, v2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    .line 104
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMapping()Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 105
    return-void

    .line 93
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    goto :goto_0

    .line 100
    .restart local v0    # "url":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getMapping()Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 101
    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mPhoto:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCustomButton1Click(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    new-instance v0, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mMappingCfg:Lcom/genie_connect/android/db/config/widgets/MappingConfig;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/MappingConfig;->getFormattedAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getMapDirectionsIntent(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 109
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/eventgenie/android/activities/mapping/MapVenueActivity;->mImageLoader:Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/caching/imageloader/GenieImageLoader;->stopThread()V

    .line 114
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onDestroy()V

    .line 115
    return-void
.end method

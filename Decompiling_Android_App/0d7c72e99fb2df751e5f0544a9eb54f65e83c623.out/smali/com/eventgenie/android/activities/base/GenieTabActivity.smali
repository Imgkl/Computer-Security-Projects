.class public abstract Lcom/eventgenie/android/activities/base/GenieTabActivity;
.super Landroid/app/TabActivity;
.source "GenieTabActivity.java"

# interfaces
.implements Lcom/eventgenie/android/activities/base/GenieActivity;
.implements Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;
.implements Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbarControls;
.implements Lcom/eventgenie/android/activities/base/ActivityFields;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/base/GenieTabActivity$RefreshBadgeCountOnTabs;
    }
.end annotation


# instance fields
.field private mActionBar:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

.field private mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

.field private mAnimation:Landroid/view/animation/Animation;

.field private mBottomActionBar:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

.field private mDefaultTabTag:Ljava/lang/String;

.field private mIsAuthenticated:Z

.field private mIsHome:Z

.field private mIsSecure:Z

.field private mNamespaceToUseForIcons:J

.field private mTabTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mViewHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mDefaultTabTag:Ljava/lang/String;

    .line 108
    iput-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mIsSecure:Z

    .line 109
    iput-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mIsAuthenticated:Z

    .line 110
    iput-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mIsHome:Z

    .line 639
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/base/GenieTabActivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/activities/base/GenieTabActivity;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private doInternalSecureCheck()V
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/eventgenie/android/utils/help/DeviceInfoUtils;->getInternalAccessGroup(Landroid/content/Context;)Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    move-result-object v0

    .line 256
    .local v0, "myGroup":Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getInternalSecurityGroupRequirement()Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    move-result-object v1

    .line 259
    .local v1, "targetGroup":Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->doInternalSecureCheck(Landroid/app/Activity;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;)V

    .line 260
    return-void
.end method

.method private doSecureCheck()V
    .locals 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mIsSecure:Z

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->doSecureCheck(Landroid/app/Activity;ZZ)V

    .line 264
    return-void
.end method

.method protected static initialiseData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 631
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->initialiseData(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 632
    return-void
.end method

.method public static isDataServiceUpdating()Z
    .locals 1

    .prologue
    .line 635
    invoke-static {}, Lcom/genie_connect/android/services/ServiceManager;->isDataSyncServiceUpdating()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addInheritedExtras(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 124
    :goto_0
    return-object p1

    .line 122
    :cond_0
    const-string v0, "is_home"

    iget-boolean v1, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mIsHome:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    const-string v0, "hide_home"

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v1

    invoke-interface {v1}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->isMarkedAsHideHomeButton()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public addTab(Landroid/widget/TabHost;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "tabHost"    # Landroid/widget/TabHost;
    .param p2, "tabSpec"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "contentId"    # I

    .prologue
    .line 128
    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->buildTopNarrowIndicator(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 131
    return-void
.end method

.method public addTab(Landroid/widget/TabHost;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TabHost$TabContentFactory;)V
    .locals 2
    .param p1, "tabHost"    # Landroid/widget/TabHost;
    .param p2, "tabSpec"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "factory"    # Landroid/widget/TabHost$TabContentFactory;

    .prologue
    .line 134
    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p3}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->buildTopScrollableNarrowIndicator(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 137
    return-void
.end method

.method public advertBarProcess()V
    .locals 0

    .prologue
    .line 140
    invoke-static {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->advertBarProcess(Landroid/app/Activity;)V

    .line 141
    return-void
.end method

.method protected buildBottomDisabledIndicator(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x78

    .line 144
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$layout;->tab_bottom:I

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 145
    .local v0, "indicator":Landroid/widget/LinearLayout;
    sget v2, Lcom/eventgenie/android/R$id;->tab_label:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 146
    .local v1, "textview":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$drawable;->tab_text_selector:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 148
    sget v2, Lcom/eventgenie/android/R$id;->tab_label2:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "textview":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 149
    .restart local v1    # "textview":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$drawable;->tab_text_selector:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 151
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 152
    const-string v2, "disabled"

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 153
    return-object v0
.end method

.method protected buildBottomIndicator(ILjava/lang/String;)Landroid/view/View;
    .locals 7
    .param p1, "res"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$layout;->tab_bottom_icon_label_new:I

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 192
    .local v0, "indicator":Landroid/widget/LinearLayout;
    sget v3, Lcom/eventgenie/android/R$id;->tab_icon:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 193
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    sget v3, Lcom/eventgenie/android/R$id;->tab_label:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 196
    .local v2, "t":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$color;->actionbar_gray_radu:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 198
    return-object v0
.end method

.method protected buildBottomIndicator(Lcom/genie_connect/android/db/config/GenieMobileModule;)Landroid/view/View;
    .locals 11
    .param p1, "module"    # Lcom/genie_connect/android/db/config/GenieMobileModule;

    .prologue
    const/4 v10, -0x2

    .line 161
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$layout;->tab_bottom_icon_label_new:I

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 164
    .local v3, "indicator":Landroid/widget/LinearLayout;
    sget v6, Lcom/eventgenie/android/R$id;->tab_icon:I

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 165
    .local v4, "iv":Landroid/widget/ImageView;
    iget-wide v6, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mNamespaceToUseForIcons:J

    sget-object v8, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->TABS:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    invoke-virtual {p1, p0, v6, v7, v8}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getIcon(Landroid/content/Context;JLcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;)Lcom/genie_connect/android/db/config/WidgetIcon;

    move-result-object v6

    invoke-virtual {v6}, Lcom/genie_connect/android/db/config/WidgetIcon;->getDrawableId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    sget v6, Lcom/eventgenie/android/R$id;->tab_label:I

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 168
    .local v5, "t":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/genie_connect/android/db/config/GenieMobileModule;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/eventgenie/android/R$color;->actionbar_gray_radu:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 172
    sget v6, Lcom/eventgenie/android/R$id;->badgeLayout:I

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 173
    .local v1, "badgeLayout":Landroid/widget/FrameLayout;
    new-instance v0, Lcom/readystatesoftware/viewbadger/BadgeView;

    invoke-direct {v0, p0}, Lcom/readystatesoftware/viewbadger/BadgeView;-><init>(Landroid/content/Context;)V

    .line 174
    .local v0, "badge":Lcom/readystatesoftware/viewbadger/BadgeView;
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6}, Lcom/readystatesoftware/viewbadger/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 178
    new-instance v2, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;

    invoke-direct {v2}, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;-><init>()V

    .line 179
    .local v2, "holder":Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;
    iput-object v0, v2, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->badge:Lcom/readystatesoftware/viewbadger/BadgeView;

    .line 180
    iput-object p1, v2, Lcom/eventgenie/android/ui/badgecount/BadgeViewHolder;->module:Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 181
    iget-object v6, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mViewHolders:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    return-object v3
.end method

.method protected buildBottomIndicator(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$layout;->tab_bottom_new:I

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 207
    .local v0, "indicator":Landroid/widget/LinearLayout;
    sget v2, Lcom/eventgenie/android/R$id;->tab_label:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 208
    .local v1, "t":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$color;->actionbar_gray_radu:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 210
    sget v2, Lcom/eventgenie/android/R$id;->tab_label2:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "t":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 211
    .restart local v1    # "t":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$color;->actionbar_gray_radu:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 214
    return-object v0
.end method

.method protected buildTopNarrowIndicator(Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$layout;->tab_top_narrow:I

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 223
    .local v0, "indicator":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$drawable;->top_tab_text_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 225
    return-object v0
.end method

.method protected buildTopScrollableNarrowIndicator(Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$layout;->tab_top_narrow_scrollable:I

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 235
    .local v0, "indicator":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$drawable;->top_tab_text_selector:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 237
    return-object v0
.end method

.method protected checkForApplicationLockout()V
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->shouldMakeLockoutCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->hasEventExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {p0}, Lcom/eventgenie/android/utils/intents/Navigation;->goToLockout(Landroid/app/Activity;)V

    .line 246
    :cond_0
    return-void
.end method

.method public close(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 250
    invoke-static {p1}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 251
    return-void
.end method

.method public getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mActionBar:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mActionBar:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mActionBar:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    return-object v0
.end method

.method public getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    return-object v0
.end method

.method public getActionbarCompat()Lcom/eventgenie/android/ui/actionbar/GenieAbc;
    .locals 2

    .prologue
    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a GenieBaseActivity, you should use getActionbar() instead!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mBottomActionBar:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mBottomActionBar:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mBottomActionBar:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    return-object v0
.end method

.method public getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;
    .locals 1

    .prologue
    .line 310
    invoke-static {}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getBuildInfo()Lcom/eventgenie/android/utils/help/BuildInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 320
    invoke-super {p0}, Landroid/app/TabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1

    .prologue
    .line 335
    invoke-static {p0}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    return-object v0
.end method

.method public getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseCache()Lcom/genie_connect/android/db/access/DatabaseCache;
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDatabaseCache()Lcom/genie_connect/android/db/access/DatabaseCache;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultTabTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mDefaultTabTag:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;
    .locals 1

    .prologue
    .line 344
    invoke-static {}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDeviceInfo()Lcom/eventgenie/android/utils/help/DeviceInfoUtils;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v0

    return-object v0
.end method

.method protected getInternalSecurityGroupRequirement()Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->USER:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 358
    invoke-super {p0}, Landroid/app/TabActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;
    .locals 1

    .prologue
    .line 363
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v0

    return-object v0
.end method

.method protected getNamespaceToUseForIcons()J
    .locals 2

    .prologue
    .line 367
    iget-wide v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mNamespaceToUseForIcons:J

    return-wide v0
.end method

.method protected getOnTagTabChangeListener(Ljava/util/Map;)Landroid/widget/TabHost$OnTabChangeListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/widget/TabHost$OnTabChangeListener;"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "tagMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v0, Lcom/eventgenie/android/activities/base/GenieTabActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/eventgenie/android/activities/base/GenieTabActivity$1;-><init>(Lcom/eventgenie/android/activities/base/GenieTabActivity;Ljava/util/Map;)V

    return-object v0
.end method

.method public getProvider(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRestServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/genie_connect/android/net/ReachabilityManager;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringCache()Lcom/genie_connect/android/db/caching/PersistentStringCache;
    .locals 1

    .prologue
    .line 392
    invoke-static {p0}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v0

    return-object v0
.end method

.method public getTabHost()Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 397
    invoke-super {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;
    .locals 2

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v0

    return-object v0
.end method

.method public goHome()V
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/intents/Navigation;->goHome(Landroid/app/Activity;Z)V

    .line 408
    return-void
.end method

.method public hideAdvert()V
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/eventgenie/android/ui/help/UIUtils;->displayAdvert(Landroid/app/Activity;Z)V

    .line 413
    return-void
.end method

.method protected hideUnusedTabs()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, -0x1

    .line 416
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    .line 420
    .local v3, "tabCount":I
    const/4 v0, -0x1

    .line 421
    .local v0, "firstVisibleTab":I
    const/4 v2, 0x0

    .line 423
    .local v2, "invisibleTabs":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 424
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 425
    .local v6, "v":Landroid/view/View;
    sget v7, Lcom/eventgenie/android/R$id;->tab_label:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 426
    .local v5, "tv":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 428
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    if-eq v0, v8, :cond_0

    .line 429
    move v0, v1

    .line 431
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 432
    const-string v7, "hideme"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 433
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 423
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 437
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "tv":Landroid/widget/TextView;
    .end local v6    # "v":Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_4

    .line 438
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 439
    .restart local v6    # "v":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_3

    .line 440
    add-int/lit8 v2, v2, 0x1

    .line 437
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 445
    .end local v6    # "v":Landroid/view/View;
    :cond_4
    if-eq v0, v8, :cond_5

    .line 446
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 450
    :cond_5
    sub-int v7, v3, v2

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 451
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 455
    :goto_2
    return-void

    .line 453
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "^ TABS: Invisible tabs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mIsAuthenticated:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 464
    invoke-static {p0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isInsideTab()Z
    .locals 1

    .prologue
    .line 469
    invoke-static {p0}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->isInsideTab(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mIsSecure:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 479
    invoke-static {p0, p1, p2}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->doLoginActivityResult(Landroid/app/Activity;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mIsAuthenticated:Z

    .line 481
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->onLoginSuccess()V

    .line 483
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/TabActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 484
    return-void
.end method

.method public onAdClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->adClick()V

    .line 490
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 495
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 496
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/eventgenie/android/utils/managers/LocaleManager;->updateLocale(Landroid/content/res/Configuration;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V

    .line 497
    return-void
.end method

.method public onContactItemClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 500
    new-instance v0, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getContactDetailsIntent(Landroid/view/View;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 501
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 505
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": onCreate()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 508
    .local v1, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 510
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/eventgenie/android/utils/managers/LocaleManager;->updateLocale(Landroid/content/res/Configuration;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V

    .line 511
    sget v2, Lcom/eventgenie/android/R$anim;->fadein:I

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mAnimation:Landroid/view/animation/Animation;

    .line 512
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mTabTags:Ljava/util/Set;

    .line 514
    if-eqz v0, :cond_0

    .line 515
    const-string v2, "is_secure"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mIsSecure:Z

    .line 516
    const-string v2, "default_tab_tag"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mDefaultTabTag:Ljava/lang/String;

    .line 519
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mViewHolders:Ljava/util/List;

    .line 520
    invoke-static {p0}, Lcom/genie_connect/android/db/config/IconManager;->getNamespaceToUseForIcons(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mNamespaceToUseForIcons:J

    .line 522
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->doInternalSecureCheck()V

    .line 523
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->doSecureCheck()V

    .line 524
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": onDestroy()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 529
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 530
    return-void
.end method

.method public onHomeClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->goHome()V

    .line 534
    return-void
.end method

.method protected onLoginSuccess()V
    .locals 0

    .prologue
    .line 536
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MenuItem;

    .prologue
    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public onMultiEventReturnClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 544
    invoke-static {p0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->onMultiEventReturnClick(Landroid/app/Activity;)V

    .line 545
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 549
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": onPause()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->pause()V

    .line 555
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 559
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": onResume()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->checkForApplicationLockout()V

    .line 563
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;->resume()V

    .line 566
    :cond_0
    return-void
.end method

.method public onSearchClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->onSearchRequested()Z

    .line 570
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 574
    invoke-super {p0}, Landroid/app/TabActivity;->onStart()V

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": onStart()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    .line 578
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->advertBarProcess()V

    .line 579
    return-void
.end method

.method protected openWidget(Lcom/genie_connect/android/db/config/GenieMobileModule;)V
    .locals 0
    .param p1, "module"    # Lcom/genie_connect/android/db/config/GenieMobileModule;

    .prologue
    .line 582
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/intents/Navigation;->openWidget(Landroid/app/Activity;Lcom/genie_connect/android/db/config/GenieMobileModule;)V

    .line 583
    return-void
.end method

.method public requery(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 587
    invoke-static {p1}, Lcom/genie_connect/android/db/DbHelper;->requery(Landroid/database/Cursor;)V

    .line 588
    return-void
.end method

.method protected setIsAuthenticated(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 591
    iput-boolean p1, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mIsAuthenticated:Z

    .line 592
    return-void
.end method

.method protected shouldMakeLockoutCheck()Z
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x1

    return v0
.end method

.method protected showAdvert()V
    .locals 1

    .prologue
    .line 599
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 600
    return-void
.end method

.method protected showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V
    .locals 2
    .param p1, "cfg"    # Lcom/genie_connect/android/db/config/BaseConfig;

    .prologue
    const/4 v1, 0x0

    .line 603
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-static {p0, v0, p1, v1, v1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->setupSponsorship(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;Lcom/genie_connect/android/db/config/BaseConfig;Ljava/lang/Long;Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract$IAdvertisementSetup;)Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mAdvertisment:Lcom/eventgenie/android/utils/advertisement/AdvertisementAbstract;

    .line 604
    return-void
.end method

.method public abstract showIndicator(Z)V
.end method

.method public showIndicator(ZZ)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "hasRefresh"    # Z

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieTabActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->displayAppropriateIndicator(ZZ)V

    .line 611
    return-void
.end method

.method public startActivityCarefully(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 614
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    .line 615
    return-void
.end method

.method protected uniquifyTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 618
    move-object v1, p1

    .line 619
    .local v1, "tmpTag":Ljava/lang/String;
    const/4 v0, 0x0

    .line 621
    .local v0, "count":I
    :goto_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mTabTags:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    add-int/lit8 v0, v0, 0x1

    .line 623
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 626
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/base/GenieTabActivity;->mTabTags:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 627
    return-object v1
.end method

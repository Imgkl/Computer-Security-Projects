.class public Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;
.super Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;
.source "VisitorDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;
    }
.end annotation


# static fields
.field public static final ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ANALYTICS_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ENTITY_KIND:Ljava/lang/String; = "visitors"

.field public static final ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

.field public static final ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final ENTITY_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

.field public static final FORCE_PERSIST_VISITOR:Ljava/lang/String; = "FORCE_PERSIST_VISITOR"

.field private static final TAGS_WITH_NO_PARENT_GROUP:Ljava/lang/String; = "      ==  ==  NO PARENT ##*"

.field public static final VISITOR_IS_NON_INTERACTABLE:Ljava/lang/String; = "disable_interaction"

.field public static final VISITOR_JSON_EXTRA:Ljava/lang/String; = "visitor_json"


# instance fields
.field private mDetailsHelper:Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;

.field private mHideButtons:Z

.field private mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

.field private mInfoMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

.field private mInterestListTree:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

.field private mPersistVisitor:Z

.field private mPhoto:Landroid/widget/ImageView;

.field private mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mVisitorId:J

.field private mVisitorObject:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->VISITORS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sput-object v0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    .line 110
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->FIND_PEOPLE:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->ENTITY_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 111
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_VISITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->ENTITY_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 112
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->FIND_PEOPLE:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->ANALYTICS_WIDGET:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 113
    sget-object v0, Lcom/genie_connect/android/db/config/GenieWidget;->MY_VISITORS:Lcom/genie_connect/android/db/config/GenieWidget;

    sput-object v0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->ANALYTICS_WIDGET_FAV:Lcom/genie_connect/android/db/config/GenieWidget;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mHideButtons:Z

    .line 602
    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->persistVisitor(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->updateUI(Lorg/json/JSONObject;)V

    return-void
.end method

.method private addContactListSection(Lorg/json/JSONObject;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;Ljava/util/List;)V
    .locals 7
    .param p1, "visitorObject"    # Lorg/json/JSONObject;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/commonsware/cwac/merge/MergeAdapter;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p4, "restrictions":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;"
    if-eqz p1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v0

    invoke-interface {v0}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->getDetailsTitleColour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 137
    .local v4, "titleColour":Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/eventgenie/android/R$layout;->contact_details_block:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 138
    .local v1, "infoView":Landroid/view/View;
    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-object v0, p0

    move-object v2, p1

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->populateContactDetails(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;Ljava/lang/Integer;Ljava/util/List;)Z

    move-result v6

    .line 140
    .local v6, "visible":Z
    if-eqz v6, :cond_1

    .line 141
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 142
    invoke-static {p2, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 144
    :cond_0
    invoke-virtual {p3, v1}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 147
    .end local v1    # "infoView":Landroid/view/View;
    .end local v4    # "titleColour":Ljava/lang/Integer;
    .end local v6    # "visible":Z
    :cond_1
    return-void
.end method

.method private addInfoListSection(Lorg/json/JSONObject;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;Ljava/util/List;)V
    .locals 16
    .param p1, "visitorObject"    # Lorg/json/JSONObject;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/commonsware/cwac/merge/MergeAdapter;",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p4, "restrictions":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;"
    new-instance v1, Lcom/eventgenie/android/ui/help/VisitorHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v3}, Lcom/eventgenie/android/ui/help/VisitorHelper;-><init>(Landroid/app/Activity;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)V

    .line 151
    .local v1, "vUtils":Lcom/eventgenie/android/ui/help/VisitorHelper;
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$layout;->visitor_info_block:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 152
    .local v11, "info_block":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->bio_layout:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 153
    .local v9, "blockBio":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->reason_layout:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 157
    .local v10, "blockReason":Landroid/view/View;
    sget v3, Lcom/eventgenie/android/R$id;->tableOrganisation:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    .line 158
    .local v2, "tableOrganisation":Landroid/widget/TableLayout;
    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v4

    invoke-interface {v4}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->getDetailsTitleColour()I

    move-result v6

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/eventgenie/android/ui/help/VisitorHelper;->populateTable(Landroid/widget/TableLayout;Ljava/lang/String;Lorg/json/JSONObject;ZI)I

    move-result v13

    .line 160
    .local v13, "numberOfVisibleRows":I
    sget-object v3, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->JobTitle:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    sget v3, Lcom/eventgenie/android/R$id;->rowTitle:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TableRow;

    .line 162
    .local v15, "rowTitle":Landroid/widget/TableRow;
    const/16 v3, 0x8

    invoke-virtual {v15, v3}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 163
    add-int/lit8 v13, v13, -0x1

    .line 166
    .end local v15    # "rowTitle":Landroid/widget/TableRow;
    :cond_0
    sget-object v3, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Department:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    sget v3, Lcom/eventgenie/android/R$id;->rowDepartment:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TableRow;

    .line 168
    .local v14, "rowDepartment":Landroid/widget/TableRow;
    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 169
    add-int/lit8 v13, v13, -0x1

    .line 172
    .end local v14    # "rowDepartment":Landroid/widget/TableRow;
    :cond_1
    if-lez v13, :cond_2

    const/4 v12, 0x1

    .line 174
    .local v12, "isOrganisationVisible":Z
    :goto_0
    sget v3, Lcom/eventgenie/android/R$id;->header_organisation:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->details_label:I

    invoke-virtual {v1, v12, v3, v4, v2}, Lcom/eventgenie/android/ui/help/VisitorHelper;->toggleHeader(ZLandroid/view/View;ILandroid/view/View;)V

    .line 176
    sget-object v3, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->FullDescription:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    const/16 v3, 0x8

    invoke-virtual {v9, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :goto_1
    sget-object v3, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->ReasonForAttending:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 189
    const/16 v3, 0x8

    invoke-virtual {v10, v3}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :goto_2
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    .line 203
    sget v3, Lcom/eventgenie/android/R$id;->reason_header:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-static {v3, v4, v0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderVisibility(Landroid/view/View;ILandroid/app/Activity;)V

    .line 208
    :goto_3
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_6

    .line 209
    sget v3, Lcom/eventgenie/android/R$id;->biography_header:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-static {v3, v4, v0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderVisibility(Landroid/view/View;ILandroid/app/Activity;)V

    .line 215
    :goto_4
    if-nez v12, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7

    .line 222
    :goto_5
    return-void

    .line 172
    .end local v12    # "isOrganisationVisible":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 179
    .restart local v12    # "isOrganisationVisible":Z
    :cond_3
    sget v3, Lcom/eventgenie/android/R$id;->bio:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "fullDescription"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    const/4 v8, 0x1

    move-object v5, v9

    move-object/from16 v6, p1

    invoke-static/range {v3 .. v8}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->setVisitorInfoItem(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;Z)V

    goto :goto_1

    .line 191
    :cond_4
    sget v3, Lcom/eventgenie/android/R$id;->reasonForAttending:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "reasonForAttending"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    const/4 v8, 0x0

    move-object v5, v10

    move-object/from16 v6, p1

    invoke-static/range {v3 .. v8}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->setVisitorInfoItem(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;Z)V

    goto :goto_2

    .line 205
    :cond_5
    sget v3, Lcom/eventgenie/android/R$id;->reason_header:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->reason_for_attending_label:I

    move-object/from16 v0, p0

    invoke-static {v3, v4, v0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    goto :goto_3

    .line 211
    :cond_6
    sget v3, Lcom/eventgenie/android/R$id;->biography_header:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->bio_label:I

    move-object/from16 v0, p0

    invoke-static {v3, v4, v0}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;ILandroid/content/Context;)V

    goto :goto_4

    .line 220
    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    goto :goto_5
.end method

.method private addInterestsListSection(Lorg/json/JSONObject;Lcom/commonsware/cwac/merge/MergeAdapter;)V
    .locals 8
    .param p1, "visitorObject"    # Lorg/json/JSONObject;
    .param p2, "mergeAdapter"    # Lcom/commonsware/cwac/merge/MergeAdapter;

    .prologue
    .line 226
    const-string v5, "interests"

    iget-object v6, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    invoke-static {v5, p1, v6}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 251
    :cond_0
    return-void

    .line 228
    :cond_1
    const-string v5, "interests"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 230
    .local v0, "a":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->populateInternalInterestsListTree(Lorg/json/JSONArray;)V

    .line 233
    iget-object v5, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mInterestListTree:Ljava/util/Map;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mInterestListTree:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 234
    iget-object v5, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mInterestListTree:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 237
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 238
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 239
    .local v3, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "      ==  ==  NO PARENT ##*"

    sget v7, Lcom/eventgenie/android/R$string;->visitor_tab_interests:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/eventgenie/android/ui/help/UIUtils;->getListSectionHeader(Ljava/lang/String;Landroid/app/Activity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    .line 245
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 246
    .local v4, "tagName":Ljava/lang/String;
    iget-object v5, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mDetailsHelper:Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getText(Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/commonsware/cwac/merge/MergeAdapter;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private getViewingRestrictions(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 5
    .param p1, "visitorObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getVisitorGroup()Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;

    move-result-object v0

    .line 494
    .local v0, "myVisitorGroup":Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;
    const-string/jumbo v2, "visitorGroup"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 496
    .local v1, "viewedVisitorGroup":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 497
    const-class v2, Lcom/genie_connect/android/repository/VisitorGroupRepository;

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/repository/VisitorGroupRepository;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGroupGsonModel;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/genie_connect/android/repository/VisitorGroupRepository;->getViewingRestrictions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 503
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private isThisVisitorMe()Z
    .locals 8

    .prologue
    .line 264
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v0

    .line 265
    .local v0, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    const-string v4, "id"

    const-wide/16 v6, -0x1

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 266
    const/4 v1, 0x1

    .line 268
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private persistVisitor(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 425
    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v1}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p1}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v0

    .line 429
    .local v0, "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDatabaseWrapper()Lcom/genie_connect/android/platform/DatabaseWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V

    .line 431
    invoke-static {p0}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    const-string/jumbo v4, "visitors"

    invoke-static {v2, v3, v4}, Lcom/genie_connect/android/db/caching/PSCGroups;->getGroupForEntity(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->put(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 434
    return-void
.end method

.method private populateInternalInterestsListTree(Lorg/json/JSONArray;)V
    .locals 8
    .param p1, "array"    # Lorg/json/JSONArray;

    .prologue
    .line 438
    if-eqz p1, :cond_3

    .line 439
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    .line 445
    .local v0, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mInterestListTree:Ljava/util/Map;

    .line 447
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 448
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 449
    .local v3, "tmpObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 450
    const-string v6, "name"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 451
    .local v5, "tmpTag":Ljava/lang/String;
    invoke-static {v5}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 452
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getVisitorsDb()Lcom/genie_connect/android/db/access/DbVisitors;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/genie_connect/android/db/access/DbVisitors;->getParentForInterest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 453
    .local v4, "tmpParent":Ljava/lang/String;
    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 454
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 455
    iget-object v6, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mInterestListTree:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 456
    iget-object v6, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mInterestListTree:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 447
    .end local v4    # "tmpParent":Ljava/lang/String;
    .end local v5    # "tmpTag":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 458
    .restart local v4    # "tmpParent":Ljava/lang/String;
    .restart local v5    # "tmpTag":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 459
    .local v2, "newSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-interface {v2, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v6, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mInterestListTree:Ljava/util/Map;

    invoke-interface {v6, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 467
    .end local v2    # "newSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    .end local v3    # "tmpObject":Lorg/json/JSONObject;
    .end local v4    # "tmpParent":Ljava/lang/String;
    .end local v5    # "tmpTag":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mInterestListTree:Ljava/util/Map;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/eventgenie/android/utils/help/MapUtils;->sortByKey(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v6

    iput-object v6, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mInterestListTree:Ljava/util/Map;

    .line 469
    .end local v0    # "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private static setVisitorInfoItem(Landroid/widget/TextView;Ljava/lang/String;Landroid/view/View;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;Z)V
    .locals 5
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "layoutBlock"    # Landroid/view/View;
    .param p3, "visitorObject"    # Lorg/json/JSONObject;
    .param p4, "networkingFeatures"    # Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    .param p5, "containsHtmlContent"    # Z

    .prologue
    const/16 v3, 0x8

    .line 582
    invoke-static {p1, p3, p4}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v1

    .line 584
    .local v1, "visible":Z
    if-eqz v1, :cond_2

    .line 585
    invoke-static {p3, p1}, Lcom/eventgenie/android/utils/help/NetworkingUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 587
    if-nez p5, :cond_0

    .line 588
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    .end local v0    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 590
    .restart local v0    # "text":Ljava/lang/String;
    :cond_0
    const-string v2, "\n"

    const-string v3, "<br>"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;

    invoke-direct {v4}, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 595
    :cond_1
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 598
    .end local v0    # "text":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupBottomBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 474
    invoke-direct {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->isThisVisitorMe()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getHasNote()Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showActionNote(ZZ)V

    .line 477
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getHasNote()Z

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showActionFavourite(ZZ)V

    .line 479
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setFullLengthTextVisibility(Z)V

    .line 488
    :goto_0
    return-void

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setFullLengthTextVisibility(Z)V

    .line 484
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v0

    .line 485
    .local v0, "cfg":Lcom/genie_connect/android/db/config/features/NetworkingFeatures;
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;->MEETING:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isEnableMeetings()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;Z)V

    .line 486
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;->MESSAGE:Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/features/NetworkingFeatures;->isEnableMessages()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar$ACTION;Z)V

    goto :goto_0
.end method

.method private updateUI(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "visitorObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 508
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getViewingRestrictions(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v6

    .line 510
    .local v6, "restrictions":Ljava/util/List;, "Ljava/util/List<Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;>;"
    new-instance v7, Lcom/eventgenie/android/ui/help/VisitorHelper;

    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    invoke-direct {v7, p0, v0}, Lcom/eventgenie/android/ui/help/VisitorHelper;-><init>(Landroid/app/Activity;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)V

    .line 511
    .local v7, "vUtils":Lcom/eventgenie/android/ui/help/VisitorHelper;
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 512
    iput-object p1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v7, v0, p1, v2, v6}, Lcom/eventgenie/android/ui/help/VisitorHelper;->populateVisitorHeader(Landroid/view/View;Lorg/json/JSONObject;ZLjava/util/List;)V

    .line 517
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getVisitorsDb()Lcom/genie_connect/android/db/access/DbVisitors;

    move-result-object v0

    iget-wide v4, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorId:J

    invoke-virtual {v0, v4, v5}, Lcom/genie_connect/android/db/access/DbVisitors;->isVisitorFavourited(J)Z

    move-result v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getNotes()Lcom/genie_connect/android/db/access/DbNotes;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getEntityId()J

    move-result-wide v10

    invoke-virtual {v0, v4, v10, v11}, Lcom/genie_connect/android/db/access/DbNotes;->getNoteId(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v10, -0x1

    cmp-long v0, v4, v10

    if-eqz v0, :cond_4

    move v4, v8

    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getVisitorsDb()Lcom/genie_connect/android/db/access/DbVisitors;

    move-result-object v0

    iget-wide v10, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorId:J

    invoke-virtual {v0, v10, v11}, Lcom/genie_connect/android/db/access/DbVisitors;->isVisitorFavourited(J)Z

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->setupCommonUi(Lcom/genie_connect/android/db/config/AppConfig;ZZZZ)V

    .line 524
    invoke-static {p1}, Lcom/eventgenie/android/utils/help/NetworkingUtils;->getVisitorFullName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->setEntityName(Ljava/lang/String;)V

    .line 526
    new-instance v0, Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {v0}, Lcom/commonsware/cwac/merge/MergeAdapter;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mInfoMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    .line 528
    sget-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->MugShot:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 529
    const-string v0, "mugShotUrl"

    invoke-static {p1, v0}, Lcom/eventgenie/android/utils/help/NetworkingUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->setLogoUrl(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mugShotUrl"

    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    invoke-static {v0, p1, v1}, Lcom/eventgenie/android/utils/help/PersonContactUtils;->isFieldVisible(Ljava/lang/String;Lorg/json/JSONObject;Lcom/genie_connect/android/db/config/features/NetworkingFeatures;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 537
    :cond_1
    invoke-direct {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->setupBottomBar()V

    .line 539
    sget v0, Lcom/eventgenie/android/R$string;->info:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mInfoMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {p0, p1, v0, v1, v6}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->addInfoListSection(Lorg/json/JSONObject;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;Ljava/util/List;)V

    .line 545
    sget v0, Lcom/eventgenie/android/R$string;->visitor_tab_contact:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mInfoMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {p0, p1, v0, v1, v6}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->addContactListSection(Lorg/json/JSONObject;Ljava/lang/String;Lcom/commonsware/cwac/merge/MergeAdapter;Ljava/util/List;)V

    .line 551
    sget-object v0, Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;->Interests:Lcom/genie_connect/android/repository/VisitorGroupRepository$ViewingRestrictions;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 552
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mInfoMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-direct {p0, p1, v0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->addInterestsListSection(Lorg/json/JSONObject;Lcom/commonsware/cwac/merge/MergeAdapter;)V

    .line 558
    :cond_2
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mInfoMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    invoke-virtual {v0}, Lcom/commonsware/cwac/merge/MergeAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 559
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mDetailsHelper:Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;

    sget v2, Lcom/eventgenie/android/R$string;->this_visitor_has_not_shared_any_information:I

    invoke-virtual {v1, v2, v8}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->getText(IZ)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->details_label:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 574
    :goto_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->shouldHideIndicator()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 575
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setVisibility(I)V

    .line 577
    :cond_3
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->notifyDataSetChanged()V

    .line 578
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 579
    return-void

    :cond_4
    move v4, v2

    .line 517
    goto/16 :goto_0

    .line 567
    :cond_5
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mDetailsHelper:Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;

    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mInfoMergeAdapter:Lcom/commonsware/cwac/merge/MergeAdapter;

    sget v3, Lcom/eventgenie/android/R$string;->details_label:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;->createListView(Landroid/widget/ListAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/eventgenie/android/R$string;->details_label:I

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;->addView(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public getEntityKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    const-string/jumbo v0, "visitors"

    return-object v0
.end method

.method public getEntityNounKey()Lcom/genie_connect/android/db/config/misc/Noun$NounKey;
    .locals 1

    .prologue
    .line 260
    sget-object v0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 273
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 274
    sget v3, Lcom/eventgenie/android/R$layout;->activity_details_entity:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->setContentView(I)V

    .line 275
    new-instance v3, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-direct {v3}, Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;-><init>()V

    iput-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    .line 276
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 277
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getTabPageIndicator()Lcom/astuetz/PagerSlidingTabStrip;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    .line 278
    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mViewAdapter:Lcom/eventgenie/android/adapters/base/ViewPagerAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 279
    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 280
    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mIndicator:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v3}, Lcom/astuetz/PagerSlidingTabStrip;->notifyDataSetChanged()V

    .line 281
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/FeatureConfig;->getNetworkingFeatures()Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mNetworkingFeatures:Lcom/genie_connect/android/db/config/features/NetworkingFeatures;

    .line 282
    new-instance v3, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mDetailsHelper:Lcom/eventgenie/android/fragments/utils/DetailsViewHelper;

    .line 284
    sget v3, Lcom/eventgenie/android/R$id;->header_visitor:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->setHeader(Landroid/view/ViewGroup;)V

    .line 285
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 286
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getHeader()Landroid/view/ViewGroup;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$id;->photo:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mPhoto:Landroid/widget/ImageView;

    .line 288
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->details_title_format:I

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v6

    sget-object v7, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->ENTITY_NOUN_KEY:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v8, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->SINGULAR:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v6, v7, v8}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0, v4, v5}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 292
    sget v3, Lcom/eventgenie/android/R$id;->photo_overlay:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 294
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$drawable;->ic_action_blue_person:I

    sget v5, Lcom/eventgenie/android/R$drawable;->ic_action_light_add_person:I

    invoke-virtual {v3, v4, v5}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->changeFavIcons(II)V

    .line 298
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 299
    .local v0, "b":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 300
    const-string/jumbo v3, "visitor_json"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "passedVisitor":Ljava/lang/String;
    const-string v3, "entity_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorId:J

    .line 302
    const-string v3, "disable_interaction"

    invoke-virtual {v0, v3, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mHideButtons:Z

    .line 303
    const-string v3, "FORCE_PERSIST_VISITOR"

    invoke-virtual {v0, v3, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mPersistVisitor:Z

    .line 305
    const-string v3, "entity_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->setEntityId(J)V

    .line 307
    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    .line 310
    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    const-string v4, "id"

    const-wide/16 v6, -0x1

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->setEntityId(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    .end local v2    # "passedVisitor":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mHideButtons:Z

    if-eqz v3, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getBottomActionbar()Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/eventgenie/android/ui/actionbar/GenieBottomActionbar;->setVisibility(Z)V

    .line 322
    :cond_1
    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    if-nez v3, :cond_2

    .line 323
    const-string v3, "^ VISITOR: Need to download Visitor..."

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0, v10, v9}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->showIndicator(ZZ)V

    .line 325
    new-instance v3, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;

    invoke-direct {v3, p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;-><init>(Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;)V

    new-array v4, v10, [Ljava/lang/Boolean;

    iget-boolean v5, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mPersistVisitor:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 339
    :goto_1
    return-void

    .line 311
    .restart local v2    # "passedVisitor":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ VISITOR: Error parsing passed object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "passedVisitor":Ljava/lang/String;
    :cond_2
    const-string v3, "^ VISITOR: Already have an object, will not re-download."

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 328
    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->updateUI(Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 343
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onDestroy()V

    .line 344
    return-void
.end method

.method public onFavouriteClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 348
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onFavouriteClick(Landroid/view/View;)V

    .line 349
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getIsFavourite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->persistVisitor(Lorg/json/JSONObject;)V

    .line 352
    :cond_0
    return-void
.end method

.method protected onFavouriteSet(Z)V
    .locals 8
    .param p1, "isFavourite"    # Z

    .prologue
    const/4 v2, 0x0

    .line 356
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getNotes()Lcom/genie_connect/android/db/access/DbNotes;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getEntityKind()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getEntityId()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/genie_connect/android/db/access/DbNotes;->getNoteId(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object v0, p0

    move v3, p1

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->setupCommonUi(Lcom/genie_connect/android/db/config/AppConfig;ZZZZ)V

    .line 362
    return-void

    :cond_0
    move v4, v2

    .line 356
    goto :goto_0
.end method

.method public onMeetingClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    .line 373
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 374
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNetworkRequired(Landroid/content/Context;)V

    .line 396
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v1

    .line 380
    .local v1, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->isShowMe()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 382
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "message_to_id"

    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    const-string v4, "id"

    invoke-virtual {v3, v4, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 383
    const-string v2, "message_to_name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    const-string v5, "firstNames"

    invoke-static {v4, v5}, Lcom/eventgenie/android/ui/help/UIUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    const-string v5, "lastNames"

    invoke-static {v4, v5}, Lcom/eventgenie/android/ui/help/UIUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v2, "message_to_photo"

    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    const-string v4, "mugShotUrl"

    invoke-static {v3, v4}, Lcom/eventgenie/android/ui/help/UIUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v2, "message_to_company"

    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    const-string v4, "companyName"

    invoke-static {v3, v4}, Lcom/eventgenie/android/ui/help/UIUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p0, v2, v3, v6, v0}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getMeetingComposeIntent(Landroid/content/Context;JILandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 394
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_1
    invoke-static {p0, v6}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createEnableNetworkingDialog(Landroid/app/Activity;Z)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onMessageClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, -0x1

    .line 399
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 400
    invoke-static {p0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNetworkRequired(Landroid/content/Context;)V

    .line 422
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v1

    .line 406
    .local v1, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->isShowMe()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 409
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "message_to_id"

    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    const-string v4, "id"

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 410
    const-string v2, "message_to_name"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    const-string v5, "firstNames"

    invoke-static {v4, v5}, Lcom/eventgenie/android/ui/help/UIUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    const-string v5, "lastNames"

    invoke-static {v4, v5}, Lcom/eventgenie/android/ui/help/UIUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v2, "message_to_photo"

    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    const-string v4, "mugShotUrl"

    invoke-static {v3, v4}, Lcom/eventgenie/android/ui/help/UIUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v2, "message_to_company"

    iget-object v3, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    const-string v4, "companyName"

    invoke-static {v3, v4}, Lcom/eventgenie/android/ui/help/UIUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {p0, v2, v3, v0}, Lcom/eventgenie/android/utils/intents/GenieIntentFactory;->getMessageComposeIntent(Landroid/content/Context;JLandroid/os/Bundle;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->navigateTo(Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    goto :goto_0

    .line 420
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->createEnableNetworkingDialog(Landroid/app/Activity;Z)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public onNoteClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 366
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieEntityDetailsActivity;->onNoteClick(Landroid/view/View;)V

    .line 367
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getHasNote()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorObject:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->persistVisitor(Lorg/json/JSONObject;)V

    .line 370
    :cond_0
    return-void
.end method

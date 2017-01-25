.class public Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;
.super Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;
.source "GenericEntityListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/genie_connect/android/db/QuerySettings;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/genie_connect/android/db/QuerySettings;"
    }
.end annotation


# static fields
.field private static final ENTITY_PARENT_ID:Ljava/lang/String; = "EXTRA_PARENT_ID"

.field private static final ENTITY_PARENT_TYPE:Ljava/lang/String; = "EXTRA_PARENT_TYPE"

.field private static final ENTITY_TYPE:Ljava/lang/String; = "EXTRA_ENTITY_TYPE"

.field private static final EXTERNAL_LOADER_ID:Ljava/lang/String; = "EXTRA_EXTERNAL_LOADER_ID"

.field private static final HEADER_TEXT:Ljava/lang/String; = "EXTRA_HEADER_TEXT"

.field private static final LOADER_TYPE:Ljava/lang/String; = "EXTRA_LOADER_TYPE"

.field private static final LOADER_TYPE_EXTERNAL:I = 0x3

.field private static final LOADER_TYPE_RELATED:I = 0x2

.field private static final LOADER_TYPE_SEARCH:I = 0x1

.field private static final LOADER_TYPE_SIMPLE_LIST:I = 0x0

.field private static final SHOW_ADVERT:Ljava/lang/String; = "EXTRA_SHOW_ADVERT"


# instance fields
.field private emptyView:Landroid/view/View;

.field private isFav:Z

.field private mAdapter:Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;

.field private mAssociatedNonMyEventWidget:Lcom/genie_connect/android/db/config/GenieWidget;

.field private mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

.field private mCursor:Landroid/database/Cursor;

.field private final mLssReceiver:Landroid/content/BroadcastReceiver;

.field private mTryNowButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;-><init>()V

    .line 269
    new-instance v0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment$1;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment$1;-><init>(Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;)V

    iput-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mLssReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;)Lcom/genie_connect/android/db/config/GenieMobileModule;
    .locals 1
    .param p0, "x0"    # Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    return-object v0
.end method

.method private getEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_ENTITY_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method private hasAssociatedNonMyEventWidget()Z
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mAssociatedNonMyEventWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mAssociatedNonMyEventWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    sget-object v1, Lcom/genie_connect/android/db/config/GenieWidget;->NONE:Lcom/genie_connect/android/db/config/GenieWidget;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newExhibitorListInstance(ZZZZZ)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;
    .locals 4
    .param p0, "isFav"    # Z
    .param p1, "isFeatured"    # Z
    .param p2, "isHideNoLocation"    # Z
    .param p3, "isDisplayExpandedLocation"    # Z
    .param p4, "isSortBySequence"    # Z

    .prologue
    .line 163
    new-instance v1, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;-><init>()V

    .line 164
    .local v1, "frag":Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "EXTRA_ENTITY_TYPE"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 167
    const-string v2, "query_setting_isfavourite"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    const-string v2, "query_setting_isfeatured"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 170
    const-string v2, "query_setting_sort_by_sequence"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    const-string v2, "query_setting_hide_if_no_location"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    const-string v3, "query_setting_loc_display_mode"

    if-eqz p3, :cond_0

    sget-object v2, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->ExpandedLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 176
    const-string v2, "EXTRA_SHOW_ADVERT"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 179
    return-object v1

    .line 174
    :cond_0
    sget-object v2, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->SingleLineLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    goto :goto_0
.end method

.method public static newExternalListInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;ILjava/lang/String;Z)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;
    .locals 4
    .param p0, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p1, "externalLoaderId"    # I
    .param p2, "headerText"    # Ljava/lang/String;
    .param p3, "showAdvert"    # Z

    .prologue
    .line 123
    new-instance v1, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;-><init>()V

    .line 124
    .local v1, "frag":Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "EXTRA_ENTITY_TYPE"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 127
    const-string v2, "EXTRA_LOADER_TYPE"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    const-string v2, "EXTRA_EXTERNAL_LOADER_ID"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    const-string v2, "EXTRA_SHOW_ADVERT"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    const-string v2, "EXTRA_HEADER_TEXT"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 133
    return-object v1
.end method

.method public static newFavouriteSessionsListInstance(Ljava/util/ArrayList;Z)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;
    .locals 4
    .param p1, "isFav"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "filterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;-><init>()V

    .line 206
    .local v1, "frag":Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 208
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "EXTRA_ENTITY_TYPE"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->FAV_SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 209
    const-string v2, "query_setting_isfavourite"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 210
    const-string v2, "query_setting_filter_list"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 211
    const-string v2, "EXTRA_SHOW_ADVERT"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 214
    return-object v1
.end method

.method public static newPoiListInstance(Ljava/util/ArrayList;Z)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;
    .locals 4
    .param p1, "isFav"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "filterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;-><init>()V

    .line 185
    .local v1, "frag":Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "EXTRA_ENTITY_TYPE"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 188
    const-string v2, "query_setting_isfavourite"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    const-string v2, "query_setting_filter_list"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 190
    const-string v2, "EXTRA_SHOW_ADVERT"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 192
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 193
    return-object v1
.end method

.method public static newProducListInstance(Ljava/util/ArrayList;Z)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;
    .locals 4
    .param p1, "isFav"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "filterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;-><init>()V

    .line 220
    .local v1, "frag":Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "EXTRA_ENTITY_TYPE"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 223
    const-string v2, "query_setting_isfavourite"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    const-string v2, "query_setting_filter_list"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 225
    const-string v2, "EXTRA_SHOW_ADVERT"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 228
    return-object v1
.end method

.method public static newRelatedListInstance(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Z)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;
    .locals 6
    .param p0, "parentId"    # Ljava/lang/Long;
    .param p1, "parentType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "relatedType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "headerText"    # Ljava/lang/String;
    .param p4, "showAdvert"    # Z

    .prologue
    .line 143
    new-instance v1, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;-><init>()V

    .line 144
    .local v1, "frag":Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "EXTRA_LOADER_TYPE"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    const-string v2, "EXTRA_PARENT_ID"

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 147
    const-string v2, "EXTRA_PARENT_TYPE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 148
    const-string v2, "EXTRA_ENTITY_TYPE"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 149
    const-string v2, "EXTRA_SHOW_ADVERT"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    const-string v2, "EXTRA_HEADER_TEXT"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v2, "query_setting_loc_display_mode"

    sget-object v3, Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;->SingleLineLocation:Lcom/genie_connect/android/db/QuerySettings$ExhibitorLocationDisplayMode;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 153
    const-string v2, "query_setting_show_type"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 157
    return-object v1
.end method

.method public static newSearchResultsInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;
    .locals 4
    .param p0, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 233
    new-instance v1, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;-><init>()V

    .line 234
    .local v1, "frag":Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 236
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "EXTRA_LOADER_TYPE"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    const-string v2, "EXTRA_ENTITY_TYPE"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 238
    const-string v2, "EXTRA_SEARCH_TEXT"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v2, "EXTRA_SHOW_ADVERT"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 241
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 242
    return-object v1
.end method

.method public static newSpeakerListInstance(Ljava/util/ArrayList;Z)Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;
    .locals 4
    .param p1, "isFav"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "filterList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;

    invoke-direct {v1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;-><init>()V

    .line 248
    .local v1, "frag":Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "EXTRA_ENTITY_TYPE"

    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 251
    const-string v2, "query_setting_isfavourite"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    const-string v2, "query_setting_filter_list"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 253
    const-string v2, "EXTRA_SHOW_ADVERT"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    invoke-virtual {v1, v0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 256
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 293
    invoke-super {p0, p1}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 294
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/eventgenie/android/adapters/entity/AdapterManager;->getWrappedAdapter(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/android/db/config/AppConfig;Luk/co/alt236/easycursor/EasyCursor;Landroid/os/Bundle;)Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mAdapter:Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;

    .line 299
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mAdapter:Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;

    invoke-interface {v1}, Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 301
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 303
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "query_setting_isfavourite"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->isFav:Z

    .line 305
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "associated_non_my_event_widget"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/db/config/GenieWidget;

    iput-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mAssociatedNonMyEventWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    .line 307
    invoke-direct {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->hasAssociatedNonMyEventWidget()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mAssociatedNonMyEventWidget:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getModule(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Lcom/genie_connect/android/db/config/GenieMobileModule;

    move-result-object v1

    iput-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    .line 313
    :cond_0
    iget-boolean v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->isFav:Z

    if-eqz v1, :cond_1

    .line 314
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/eventgenie/android/activities/base/GenieBaseActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->REFRESH:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v1, v2, v6}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 317
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 318
    .local v0, "syncFilter":Landroid/content/IntentFilter;
    const-string v1, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mLssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 323
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    const-string v1, "EXTRA_LOADER_TYPE"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 330
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 352
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 332
    :pswitch_0
    new-instance v2, Lcom/genie_connect/android/db/loaders/GenericEntitySearchListLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v4

    const-string v1, "EXTRA_ENTITY_TYPE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v2, v3, v4, v1, p2}, Lcom/genie_connect/android/db/loaders/GenericEntitySearchListLoader;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;)V

    move-object v1, v2

    goto :goto_0

    .line 338
    :pswitch_1
    new-instance v2, Lcom/genie_connect/android/db/loaders/GenericFullEntityListLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v4

    const-string v1, "EXTRA_ENTITY_TYPE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v2, v3, v4, v1, p2}, Lcom/genie_connect/android/db/loaders/GenericFullEntityListLoader;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/os/Bundle;)V

    move-object v1, v2

    goto :goto_0

    .line 344
    :pswitch_2
    new-instance v3, Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v1, "EXTRA_PARENT_ID"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v1, "EXTRA_PARENT_TYPE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const-string v2, "EXTRA_ENTITY_TYPE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/genie_connect/android/db/loaders/GenericRelatedEntityLoader;-><init>(Landroid/content/Context;Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V

    move-object v1, v3

    goto :goto_0

    .line 350
    :pswitch_3
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivityAsDataProvider()Lcom/eventgenie/android/fragments/base/FragmentDataProvider;

    move-result-object v1

    const-class v2, Landroid/support/v4/content/Loader;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "EXTRA_EXTERNAL_LOADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/eventgenie/android/fragments/base/FragmentDataProvider;->getData(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/content/Loader;

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x8

    .line 358
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/ui/help/UIUtils;->getAppropriateLayoutForFragment(Landroid/app/Activity;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 359
    .local v2, "view":Landroid/view/View;
    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->emptyView:Landroid/view/View;

    .line 360
    sget v3, Lcom/eventgenie/android/R$id;->emptyViewButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mTryNowButton:Landroid/widget/Button;

    .line 361
    iget-object v3, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mTryNowButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 362
    iget-object v3, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mTryNowButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 363
    iget-object v3, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mTryNowButton:Landroid/widget/Button;

    new-instance v4, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment$2;

    invoke-direct {v4, p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment$2;-><init>(Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    :cond_0
    sget v3, Lcom/eventgenie/android/R$id;->emptyViewIcon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 373
    sget v3, Lcom/eventgenie/android/R$id;->emptyViewMessage:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 375
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "EXTRA_HEADER_TEXT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "headerText":Ljava/lang/String;
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 378
    sget v3, Lcom/eventgenie/android/R$id;->list_header:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 379
    .local v0, "header":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 380
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/eventgenie/android/ui/help/UIUtils;->setHeaderText(Landroid/view/View;Ljava/lang/String;Landroid/app/Activity;)V

    .line 383
    .end local v0    # "header":Landroid/view/View;
    :cond_1
    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mLssReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 389
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->close(Landroid/database/Cursor;)V

    .line 390
    invoke-super {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onDestroy()V

    .line 391
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "l":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/eventgenie/android/R$id;->downloadable_row:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/eventgenie/android/utils/constants/IfDefs;->isUseNewDownloadables()Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/eventgenie/android/utils/ValueCheck;->tryLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 398
    .local v8, "dlId":J
    new-instance v7, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mCursor:Landroid/database/Cursor;

    invoke-direct {v7, v8, v9, v0, v1}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;-><init>(JLandroid/content/Context;Landroid/database/Cursor;)V

    .line 400
    .local v7, "utils":Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;
    invoke-virtual {v7}, Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;->getProperAlertDialog()Landroid/app/AlertDialog;

    move-result-object v6

    .line 401
    .local v6, "dialog":Landroid/app/AlertDialog;
    if-eqz v6, :cond_0

    .line 402
    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 406
    .end local v6    # "dialog":Landroid/app/AlertDialog;
    .end local v7    # "utils":Lcom/eventgenie/android/utils/DownloadAlertDialogUtils;
    .end local v8    # "dlId":J
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/eventgenie/android/utils/intents/Navigation;->onEntityItemClick(Landroid/app/Activity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method protected onLiveSyncCompleted()V
    .locals 3

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getLoaderId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    .line 410
    .local v0, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<*>;"
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->onContentChanged()V

    .line 413
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 7
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 422
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_ENTITY_TYPE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 424
    .local v0, "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    iput-object p2, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mCursor:Landroid/database/Cursor;

    .line 426
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_SHOW_ADVERT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getAppropriateConfig(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/db/config/BaseConfig;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->showAdvert(Lcom/genie_connect/android/db/config/BaseConfig;)V

    .line 430
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mAdapter:Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;

    invoke-interface {v2, p2}, Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;->changeCursor(Landroid/database/Cursor;)V

    .line 431
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 432
    iget-boolean v2, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->isFav:Z

    if-eqz v2, :cond_4

    .line 433
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/android/db/config/misc/Label;->NO_FAVOURITES_AVAILABLE:Lcom/genie_connect/android/db/config/misc/Label;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/config/AppConfig;->getLabel(Lcom/genie_connect/android/db/config/misc/Label;)Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "label":Ljava/lang/String;
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 435
    iget-object v2, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p0, v1, v2}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->setupEmptyViewForNoFavs(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    .line 450
    .end local v1    # "label":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_LOADER_TYPE"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 451
    if-eqz p2, :cond_5

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 452
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%s "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/eventgenie/android/R$string;->search_results:I

    invoke-virtual {p0, v4}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 463
    :cond_2
    :goto_1
    invoke-virtual {p0, v6}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->markLoaderAsRunning(Z)V

    .line 464
    return-void

    .line 439
    .restart local v1    # "label":Ljava/lang/String;
    :cond_3
    sget v2, Lcom/eventgenie/android/R$string;->message_you_have_not_added_any_favourites:I

    iget-object v3, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->setupEmptyViewForNoFavs(ILandroid/view/View;)Landroid/view/View;

    goto :goto_0

    .line 445
    .end local v1    # "label":Ljava/lang/String;
    :cond_4
    sget v2, Lcom/eventgenie/android/R$string;->no_data:I

    iget-object v3, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->emptyView:Landroid/view/View;

    invoke-virtual {p0, v2, v3}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->setupEmptyViewTextOnly(ILandroid/view/View;)V

    goto :goto_0

    .line 459
    :cond_5
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/eventgenie/android/R$string;->no_results:I

    invoke-virtual {p0, v3}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 98
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mAdapter:Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/eventgenie/android/adapters/entity/wrapper/CursorAdapterWrapper;->swapCursor(Landroid/database/Cursor;)V

    .line 418
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 468
    invoke-super {p0}, Lcom/eventgenie/android/fragments/base/GenieBaseListFragment;->onResume()V

    .line 469
    iget-object v0, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->requery(Landroid/database/Cursor;)V

    .line 470
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->markLoaderAsRunning(Z)V

    .line 471
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getLoaderId()I

    move-result v1

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 472
    return-void
.end method

.method protected setupEmptyViewForNoFavs(ILandroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "resId"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 475
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewMessage:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 476
    .local v0, "emtpyText":Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/genie_connect/android/utils/string/StringUtils;->addDrawableSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewIcon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 481
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mTryNowButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mTryNowButton:Landroid/widget/Button;

    sget v2, Lcom/eventgenie/android/R$string;->button_try_now:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 483
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mTryNowButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 488
    :goto_0
    return-object p2

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mTryNowButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setupEmptyViewForNoFavs(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 498
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewMessage:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 499
    .local v0, "emtpyText":Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/genie_connect/android/utils/string/StringUtils;->addDrawableSpans(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    sget v1, Lcom/eventgenie/android/R$id;->emptyViewIcon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 504
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mCorrespondingModule:Lcom/genie_connect/android/db/config/GenieMobileModule;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mTryNowButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mTryNowButton:Landroid/widget/Button;

    sget v2, Lcom/eventgenie/android/R$string;->button_try_now:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 506
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mTryNowButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 511
    :goto_0
    return-object p2

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->mTryNowButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setupEmptyViewTextOnly(ILandroid/view/View;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 515
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->setupEmptyViewTextOnly(Ljava/lang/String;Landroid/view/View;)V

    .line 516
    return-void
.end method

.method protected setupEmptyViewTextOnly(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 519
    sget v0, Lcom/eventgenie/android/R$id;->emptyViewButton:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 520
    sget v0, Lcom/eventgenie/android/R$id;->emptyViewIcon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 521
    sget v0, Lcom/eventgenie/android/R$id;->emptyViewMessage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    sget v0, Lcom/eventgenie/android/R$id;->emptyViewMessage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    return-void
.end method

.method protected stopLoader()V
    .locals 2

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/fragments/entity/GenericEntityListFragment;->getLoaderId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 528
    return-void
.end method

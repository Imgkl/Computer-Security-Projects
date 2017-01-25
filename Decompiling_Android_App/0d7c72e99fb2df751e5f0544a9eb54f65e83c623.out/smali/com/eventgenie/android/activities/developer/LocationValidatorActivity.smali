.class public Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;
.super Lcom/eventgenie/android/activities/base/GenieListActivity;
.source "LocationValidatorActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/eventgenie/android/activities/base/GenieListActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# static fields
.field private static final INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

.field private static final LOADER_ID:I = 0x72


# instance fields
.field private headerView:Landroid/widget/LinearLayout;

.field private mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

.field private mInteractiveMapsPresent:Z

.field private mSpinner:Landroid/widget/Spinner;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;->SUPPORT:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    sput-object v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieListActivity;-><init>()V

    .line 73
    return-void
.end method

.method private initLoader()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/16 v3, 0xa

    const/4 v2, -0x2

    const/4 v6, 0x0

    .line 154
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 155
    .local v9, "selection":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ Spinner selection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_INVALID_LOCATIONS_WITH_ATTACHED_EXHIBITOR:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v6

    const-string v0, "name"

    aput-object v0, v4, v11

    .line 159
    .local v4, "from":[Ljava/lang/String;
    const/4 v0, 0x2

    new-array v5, v0, [I

    sget v0, Lcom/eventgenie/android/R$id;->exhibitor_name:I

    aput v0, v5, v6

    sget v0, Lcom/eventgenie/android/R$id;->location_name:I

    aput v0, v5, v11

    .line 160
    .local v5, "to":[I
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 163
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    .line 164
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 168
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 169
    .local v7, "column1":Landroid/widget/TextView;
    const-string v0, "_id"

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    invoke-virtual {v7, v3, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 173
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 174
    .local v8, "column2":Landroid/widget/TextView;
    const-string v0, "name"

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    invoke-virtual {v8, v3, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 178
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 181
    new-instance v0, Lcom/eventgenie/android/activities/developer/LocationValidCursorAdapter;

    sget v2, Lcom/eventgenie/android/R$layout;->list_item_exhibitor_locations:I

    const/4 v3, 0x0

    check-cast v3, Luk/co/alt236/easycursor/EasyCursor;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/activities/developer/LocationValidCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 255
    .end local v4    # "from":[Ljava/lang/String;
    .end local v5    # "to":[I
    .end local v7    # "column1":Landroid/widget/TextView;
    .end local v8    # "column2":Landroid/widget/TextView;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x72

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 258
    return-void

    .line 185
    :cond_2
    sget-object v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_VALID_BOOTHS_WITH_NO_EXHIBITOR:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_INVALID_LOCATIONS:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 187
    :cond_3
    new-array v4, v11, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v4, v6

    .line 188
    .restart local v4    # "from":[Ljava/lang/String;
    new-array v5, v11, [I

    sget v0, Lcom/eventgenie/android/R$id;->location:I

    aput v0, v5, v6

    .line 189
    .restart local v5    # "to":[I
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 190
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 192
    :cond_4
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    .line 193
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 197
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 198
    .local v10, "tvLocationNameColumn":Landroid/widget/TextView;
    const-string v0, "name"

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    invoke-virtual {v10, v3, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 203
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 205
    new-instance v0, Lcom/eventgenie/android/activities/developer/LocationValidCursorAdapter;

    sget v2, Lcom/eventgenie/android/R$layout;->list_item_location:I

    const/4 v3, 0x0

    check-cast v3, Luk/co/alt236/easycursor/EasyCursor;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/activities/developer/LocationValidCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    goto/16 :goto_0

    .line 208
    .end local v4    # "from":[Ljava/lang/String;
    .end local v5    # "to":[I
    .end local v10    # "tvLocationNameColumn":Landroid/widget/TextView;
    :cond_5
    sget-object v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_EXHIBITORS_WITH_INVALID_LOCATIONS:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 209
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v6

    const-string v0, "name"

    aput-object v0, v4, v11

    .line 210
    .restart local v4    # "from":[Ljava/lang/String;
    new-array v5, v11, [I

    sget v0, Lcom/eventgenie/android/R$id;->exhibitor_name:I

    aput v0, v5, v6

    .line 211
    .restart local v5    # "to":[I
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    .line 212
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 214
    :cond_6
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    .line 215
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 219
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 220
    .restart local v10    # "tvLocationNameColumn":Landroid/widget/TextView;
    const-string v0, "Exhibitors"

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    invoke-virtual {v10, v3, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 226
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 228
    new-instance v0, Lcom/eventgenie/android/activities/developer/LocationValidCursorAdapter;

    sget v2, Lcom/eventgenie/android/R$layout;->list_item_exhibitor_locations:I

    const/4 v3, 0x0

    check-cast v3, Luk/co/alt236/easycursor/EasyCursor;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/activities/developer/LocationValidCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    goto/16 :goto_0

    .line 231
    .end local v4    # "from":[Ljava/lang/String;
    .end local v5    # "to":[I
    .end local v10    # "tvLocationNameColumn":Landroid/widget/TextView;
    :cond_7
    sget-object v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->ALL_SESSIONS_WITH_INVALID_LOCATIONS:Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "sid"

    aput-object v0, v4, v6

    const-string v0, "sn"

    aput-object v0, v4, v11

    const/4 v0, 0x2

    const-string v1, "ln"

    aput-object v1, v4, v0

    .line 233
    .restart local v4    # "from":[Ljava/lang/String;
    const/4 v0, 0x3

    new-array v5, v0, [I

    sget v0, Lcom/eventgenie/android/R$id;->invalid_session_id:I

    aput v0, v5, v6

    sget v0, Lcom/eventgenie/android/R$id;->invalid_session_location_name:I

    aput v0, v5, v11

    const/4 v0, 0x2

    sget v1, Lcom/eventgenie/android/R$id;->invalid_session_name:I

    aput v1, v5, v0

    .line 235
    .restart local v5    # "to":[I
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    .line 236
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 238
    :cond_8
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    .line 239
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 243
    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 244
    .restart local v10    # "tvLocationNameColumn":Landroid/widget/TextView;
    const-string v0, "Invalid location Sessions"

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    invoke-virtual {v10, v3, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 249
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->headerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 251
    new-instance v0, Lcom/eventgenie/android/activities/developer/LocationValidCursorAdapter;

    sget v2, Lcom/eventgenie/android/R$layout;->list_item_invalid_location_session:I

    const/4 v3, 0x0

    check-cast v3, Luk/co/alt236/easycursor/EasyCursor;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/eventgenie/android/activities/developer/LocationValidCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    goto/16 :goto_0
.end method


# virtual methods
.method protected getInternalSecurityGroupRequirement()Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->INTERNAL_ACCESS_GROUP:Lcom/eventgenie/android/utils/help/DeviceInfoUtils$InternalAccessGroup;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 91
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    sget v7, Lcom/eventgenie/android/R$layout;->generic_spinner_list:I

    invoke-virtual {p0, v7}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->setContentView(I)V

    .line 93
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;

    move-result-object v7

    const-string v8, "Location Validator"

    invoke-interface {v7, v8}, Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getMaps()Lcom/genie_connect/android/db/access/DbMaps;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/genie_connect/android/db/access/DbMaps;->getMaps(I)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v7

    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v7

    if-lez v7, :cond_0

    :goto_0
    iput-boolean v6, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->mInteractiveMapsPresent:Z

    .line 95
    sget v6, Lcom/eventgenie/android/R$id;->spinner:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    iput-object v6, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->mSpinner:Landroid/widget/Spinner;

    .line 97
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v5, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->values()[Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;

    move-result-object v1

    .local v1, "arr$":[Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 100
    .local v4, "option":Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;
    invoke-virtual {v4}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 94
    .end local v1    # "arr$":[Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "option":Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;
    .end local v5    # "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 103
    .restart local v1    # "arr$":[Lcom/eventgenie/android/activities/developer/LocationValidatorActivity$OPTIONS;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v0, p0, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 104
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 105
    iget-object v6, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 106
    iget-object v6, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 108
    sget v6, Lcom/eventgenie/android/R$id;->list_header:I

    invoke-virtual {p0, v6}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->mTextView:Landroid/widget/TextView;

    .line 109
    iget-object v6, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->mTextView:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    iget-object v6, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->mTextView:Landroid/widget/TextView;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 112
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->initLoader()V

    .line 113
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;
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
    .line 122
    const-string v1, "^ onCreateLoader"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "selection":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ Spinner selection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/genie_connect/android/db/loaders/InvalidLocationsLoader;

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/genie_connect/android/db/loaders/InvalidLocationsLoader;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Ljava/lang/String;)V

    return-object v1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
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
    .line 143
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v0, "^ onItemSelected"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 145
    invoke-direct {p0}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->initLoader()V

    .line 146
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2, "arg1"    # Landroid/database/Cursor;
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
    .line 130
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "^ onLoadFinished"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 132
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/SimpleCursorAdapter;->notifyDataSetChanged()V

    .line 133
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 137
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const-string v0, "^ onLoaderReset"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->mAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 139
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onViewMapClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ onViewMapClick"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n Tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 262
    iget-boolean v0, p0, Lcom/eventgenie/android/activities/developer/LocationValidatorActivity;->mInteractiveMapsPresent:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 263
    new-instance v1, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 265
    :cond_0
    return-void
.end method

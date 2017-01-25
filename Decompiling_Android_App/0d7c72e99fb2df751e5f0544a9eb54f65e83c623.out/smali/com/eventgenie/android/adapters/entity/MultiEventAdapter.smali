.class public Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;
.super Landroid/widget/CursorAdapter;
.source "MultiEventAdapter.java"


# instance fields
.field private final dayFormat:Ljava/text/DateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "namespace"    # J

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 50
    sget-object v0, Lcom/genie_connect/common/utils/date/TimeFormatter;->sJavaDateMediumFormat:Ljava/text/DateFormat;

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;->dayFormat:Ljava/text/DateFormat;

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    return-void
.end method

.method private static toggleVisibility(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 136
    invoke-static {p0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 62
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    if-nez p2, :cond_0

    .line 67
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v12, Lcom/eventgenie/android/R$layout;->list_item_entity_app:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 70
    :cond_0
    sget v11, Lcom/eventgenie/android/R$id;->icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 71
    .local v4, "icon":Landroid/widget/ImageView;
    sget v11, Lcom/eventgenie/android/R$id;->name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 72
    .local v6, "name":Landroid/widget/TextView;
    sget v11, Lcom/eventgenie/android/R$id;->strapline:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 73
    .local v9, "strapLine":Landroid/widget/TextView;
    sget v11, Lcom/eventgenie/android/R$id;->location:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 74
    .local v5, "location":Landroid/widget/TextView;
    sget v11, Lcom/eventgenie/android/R$id;->date_from:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 75
    .local v8, "startDate":Landroid/widget/TextView;
    sget v11, Lcom/eventgenie/android/R$id;->date_to:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    .local v1, "endDate":Landroid/widget/TextView;
    sget v11, Lcom/eventgenie/android/R$id;->app_row:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 78
    .local v7, "row":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    move/from16 v0, p1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    const-string v12, "iconUrl"

    invoke-static {v11, v12}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 81
    .local v10, "value":Ljava/lang/String;
    sget v11, Lcom/eventgenie/android/R$drawable;->image_placeholder:I

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    invoke-static {v10}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 84
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v11

    invoke-virtual {v11, v10, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 89
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    const-string v12, "name"

    invoke-static {v11, v12}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 90
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    const-string v12, "strapLine"

    invoke-static {v11, v12}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 93
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    const-string v12, "eventLocation"

    invoke-static {v11, v12}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 96
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    const-string v12, "eventStartDate"

    invoke-static {v11, v12}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 99
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;->dayFormat:Ljava/text/DateFormat;

    invoke-static {v11, v10}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormatFromSqlite(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    const-string v12, "eventEndDate"

    invoke-static {v11, v12}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 103
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/eventgenie/android/R$string;->schedule_end_formatter:I

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;->dayFormat:Ljava/text/DateFormat;

    invoke-static {v15, v10}, Lcom/genie_connect/common/utils/date/TimeFormatter;->doFormatFromSqlite(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "endDateString":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-le v11, v12, :cond_2

    .line 108
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    const-string v12, "isFeatured"

    invoke-static {v11, v12}, Lcom/genie_connect/android/db/DbHelper;->getIntegerFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 115
    .local v3, "featured":I
    const/4 v11, 0x1

    if-ne v3, v11, :cond_3

    .line 116
    sget v11, Lcom/eventgenie/android/R$drawable;->list_item_background_selector_featured:I

    invoke-virtual {v7, v11}, Landroid/view/View;->setBackgroundResource(I)V

    .line 121
    :goto_2
    invoke-static {v9}, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;->toggleVisibility(Landroid/widget/TextView;)V

    .line 122
    invoke-static {v5}, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;->toggleVisibility(Landroid/widget/TextView;)V

    .line 124
    sget v11, Lcom/eventgenie/android/R$id;->app_row:I

    invoke-virtual/range {p0 .. p0}, Lcom/eventgenie/android/adapters/entity/MultiEventAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v12

    const-string v13, "app"

    invoke-static {v12, v13}, Lcom/genie_connect/android/db/DbHelper;->getLongFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 127
    return-object p2

    .line 86
    .end local v2    # "endDateString":Ljava/lang/String;
    .end local v3    # "featured":I
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->cancelDisplayTask(Landroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 110
    .restart local v2    # "endDateString":Ljava/lang/String;
    :cond_2
    const-string v11, ""

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 118
    .restart local v3    # "featured":I
    :cond_3
    sget v11, Lcom/eventgenie/android/R$drawable;->list_item_background_selector:I

    invoke-virtual {v7, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

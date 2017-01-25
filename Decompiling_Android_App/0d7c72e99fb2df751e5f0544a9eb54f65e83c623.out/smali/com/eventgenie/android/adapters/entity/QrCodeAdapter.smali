.class Lcom/eventgenie/android/adapters/entity/QrCodeAdapter;
.super Lcom/eventgenie/android/adapters/entity/BaseMultiEntityAdapter;
.source "QrCodeAdapter.java"


# instance fields
.field private final mNamespace:J


# direct methods
.method public constructor <init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;Lcom/genie_connect/android/db/config/AppConfig;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "data"    # Luk/co/alt236/easycursor/EasyCursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "alphaIndexColumn"    # Ljava/lang/String;
    .param p7, "config"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    .line 59
    invoke-virtual/range {p7 .. p7}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/eventgenie/android/adapters/entity/BaseMultiEntityAdapter;-><init>(Landroid/content/Context;ILuk/co/alt236/easycursor/EasyCursor;[Ljava/lang/String;[ILjava/lang/String;JLcom/genie_connect/android/db/config/AppConfig;)V

    .line 60
    invoke-virtual/range {p7 .. p7}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eventgenie/android/adapters/entity/QrCodeAdapter;->mNamespace:J

    .line 61
    return-void
.end method

.method private getHumanReadableType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string/jumbo v0, "type_contact_card"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/QrCodeAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/eventgenie/android/R$string;->qrcode_contact_card:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 66
    :cond_0
    const-string/jumbo v0, "type_url"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/eventgenie/android/adapters/entity/QrCodeAdapter;->mContext:Landroid/content/Context;

    sget v1, Lcom/eventgenie/android/R$string;->qrcode_web_url:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 9
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/QrCodeAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    const-string v2, "entity"

    invoke-interface {v1, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "entity":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/QrCodeAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-interface {v1, v2}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    sget v2, Lcom/eventgenie/android/R$id;->photo:I

    if-ne v1, v2, :cond_4

    .line 79
    const-string v1, "genie-deep-link"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/adapters/entity/QrCodeAdapter;->getModifier(Ljava/lang/String;)Lcom/genie_connect/android/db/config/features/GmListModifier;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/eventgenie/android/adapters/entity/QrCodeAdapter;->setThumbnail(Lcom/genie_connect/android/db/config/features/GmListModifier;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v1, "genie-genie-intent-view"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {p0, v0}, Lcom/eventgenie/android/adapters/entity/QrCodeAdapter;->getModifier(Ljava/lang/String;)Lcom/genie_connect/android/db/config/features/GmListModifier;

    move-result-object v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/eventgenie/android/adapters/entity/QrCodeAdapter;->setThumbnail(Lcom/genie_connect/android/db/config/features/GmListModifier;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    const-string/jumbo v1, "type_contact_card"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    const-string v4, "contact"

    .line 95
    .local v4, "iconName":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/eventgenie/android/adapters/entity/QrCodeAdapter;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/eventgenie/android/adapters/entity/QrCodeAdapter;->mNamespace:J

    const-string v5, "line_white"

    sget-object v6, Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;->LIST:Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;

    invoke-static/range {v1 .. v6}, Lcom/genie_connect/android/db/config/IconManager;->getIcon(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Lcom/genie_connect/android/db/config/widgets/WidgetConfig$IconType;)Lcom/genie_connect/android/db/config/WidgetIcon;

    move-result-object v7

    .line 96
    .local v7, "iconDef":Lcom/genie_connect/android/db/config/WidgetIcon;
    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/WidgetIcon;->getDrawableId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 89
    .end local v4    # "iconName":Ljava/lang/String;
    .end local v7    # "iconDef":Lcom/genie_connect/android/db/config/WidgetIcon;
    :cond_2
    const-string/jumbo v1, "type_url"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    const-string/jumbo v4, "upload"

    .restart local v4    # "iconName":Ljava/lang/String;
    goto :goto_1

    .line 92
    .end local v4    # "iconName":Ljava/lang/String;
    :cond_3
    const-string v4, "qrreader"

    .restart local v4    # "iconName":Ljava/lang/String;
    goto :goto_1

    .line 99
    .end local v4    # "iconName":Ljava/lang/String;
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/eventgenie/android/adapters/entity/BaseMultiEntityAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/QrCodeAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    const-string v3, "entity"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "entityType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v2

    sget v3, Lcom/eventgenie/android/R$id;->name:I

    if-ne v2, v3, :cond_1

    .line 112
    if-eqz v0, :cond_0

    .line 113
    move-object v1, p2

    .line 133
    .local v1, "tmp":Ljava/lang/String;
    :goto_0
    invoke-super {p0, p1, v1}, Lcom/eventgenie/android/adapters/entity/BaseMultiEntityAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 134
    return-void

    .line 115
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/QrCodeAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    const-string v3, "displayname"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tmp":Ljava/lang/String;
    goto :goto_0

    .line 117
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v2

    sget v3, Lcom/eventgenie/android/R$id;->description:I

    if-ne v2, v3, :cond_3

    .line 120
    if-eqz v0, :cond_2

    .line 121
    move-object v1, p2

    .restart local v1    # "tmp":Ljava/lang/String;
    goto :goto_0

    .line 123
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/entity/QrCodeAdapter;->getCursor()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/eventgenie/android/adapters/entity/QrCodeAdapter;->getHumanReadableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tmp":Ljava/lang/String;
    goto :goto_0

    .line 128
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_3
    move-object v1, p2

    .restart local v1    # "tmp":Ljava/lang/String;
    goto :goto_0
.end method

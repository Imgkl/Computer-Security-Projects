.class public Lcom/eventgenie/android/utils/qrcode/VCardContacts;
.super Lcom/eventgenie/android/utils/qrcode/AbstractCardContacts;
.source "VCardContacts.java"


# instance fields
.field builder:Lcom/a_vcard/android/syncml/pim/VDataBuilder;

.field contacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a_vcard/android/syncml/pim/VNode;",
            ">;"
        }
    .end annotation
.end field

.field isParsed:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "vCardString"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/eventgenie/android/utils/qrcode/AbstractCardContacts;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/eventgenie/android/utils/qrcode/VCardContacts;->barCode:Ljava/lang/String;

    .line 63
    new-instance v1, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;

    invoke-direct {v1}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;-><init>()V

    .line 64
    .local v1, "parser":Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;
    new-instance v2, Lcom/a_vcard/android/syncml/pim/VDataBuilder;

    invoke-direct {v2}, Lcom/a_vcard/android/syncml/pim/VDataBuilder;-><init>()V

    iput-object v2, p0, Lcom/eventgenie/android/utils/qrcode/VCardContacts;->builder:Lcom/a_vcard/android/syncml/pim/VDataBuilder;

    .line 66
    :try_start_0
    const-string v2, "UTF-8"

    iget-object v3, p0, Lcom/eventgenie/android/utils/qrcode/VCardContacts;->builder:Lcom/a_vcard/android/syncml/pim/VDataBuilder;

    invoke-virtual {v1, p1, v2, v3}, Lcom/a_vcard/android/syncml/pim/vcard/VCardParser;->parse(Ljava/lang/String;Ljava/lang/String;Lcom/a_vcard/android/syncml/pim/VDataBuilder;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/utils/qrcode/VCardContacts;->isParsed:Ljava/lang/Boolean;

    .line 67
    iget-object v2, p0, Lcom/eventgenie/android/utils/qrcode/VCardContacts;->builder:Lcom/a_vcard/android/syncml/pim/VDataBuilder;

    iget-object v2, v2, Lcom/a_vcard/android/syncml/pim/VDataBuilder;->vNodeList:Ljava/util/List;

    iput-object v2, p0, Lcom/eventgenie/android/utils/qrcode/VCardContacts;->contacts:Ljava/util/List;
    :try_end_0
    .catch Lcom/a_vcard/android/syncml/pim/vcard/VCardException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 74
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
    invoke-virtual {v0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v0    # "e":Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public IsParsed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/VCardContacts;->isParsed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBarCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/VCardContacts;->barCode:Ljava/lang/String;

    return-object v0
.end method

.method public getContact(I)Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 78
    iget-object v1, p0, Lcom/eventgenie/android/utils/qrcode/VCardContacts;->isParsed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v0, Lcom/eventgenie/android/utils/qrcode/VCardContact;

    iget-object v1, p0, Lcom/eventgenie/android/utils/qrcode/VCardContacts;->contacts:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a_vcard/android/syncml/pim/VNode;

    invoke-direct {v0, v1}, Lcom/eventgenie/android/utils/qrcode/VCardContact;-><init>(Lcom/a_vcard/android/syncml/pim/VNode;)V

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

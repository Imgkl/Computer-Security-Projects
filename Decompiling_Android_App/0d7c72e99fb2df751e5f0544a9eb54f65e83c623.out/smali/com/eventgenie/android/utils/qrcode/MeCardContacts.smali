.class public Lcom/eventgenie/android/utils/qrcode/MeCardContacts;
.super Lcom/eventgenie/android/utils/qrcode/AbstractCardContacts;
.source "MeCardContacts.java"


# instance fields
.field mContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;",
            ">;"
        }
    .end annotation
.end field

.field mIsParsed:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "vCardString"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/eventgenie/android/utils/qrcode/AbstractCardContacts;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/eventgenie/android/utils/qrcode/MeCardContacts;->barCode:Ljava/lang/String;

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/eventgenie/android/utils/qrcode/MeCardContacts;->mContacts:Ljava/util/List;

    .line 53
    new-instance v1, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser;

    invoke-direct {v1}, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser;-><init>()V

    .line 56
    .local v1, "parser":Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v1, p1, v2}, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser;->parse(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/utils/qrcode/MeCardContacts;->mIsParsed:Ljava/lang/Boolean;

    .line 57
    invoke-virtual {v1}, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser;->getContacts()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/eventgenie/android/utils/qrcode/MeCardContacts;->mContacts:Ljava/util/List;
    :try_end_0
    .catch Lcom/a_vcard/android/syncml/pim/vcard/VCardException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
    invoke-virtual {v0}, Lcom/a_vcard/android/syncml/pim/vcard/VCardException;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v0    # "e":Lcom/a_vcard/android/syncml/pim/vcard/VCardException;
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public IsParsed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/MeCardContacts;->mIsParsed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBarCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/eventgenie/android/utils/qrcode/MeCardContacts;->barCode:Ljava/lang/String;

    return-object v0
.end method

.method public getContact(I)Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;
    .locals 2
    .param p1, "num"    # I

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Lcom/eventgenie/android/utils/qrcode/MeCardContacts;->mContacts:Ljava/util/List;

    if-nez v1, :cond_1

    .line 69
    const-string v1, "^ MECARD: contacts collection is null!"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/utils/qrcode/MeCardContacts;->mIsParsed:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/eventgenie/android/utils/qrcode/MeCardContacts;->mContacts:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;

    .line 75
    .local v0, "contact":Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;
    goto :goto_0
.end method

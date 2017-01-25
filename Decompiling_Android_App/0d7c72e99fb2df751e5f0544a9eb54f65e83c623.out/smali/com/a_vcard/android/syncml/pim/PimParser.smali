.class public Lcom/a_vcard/android/syncml/pim/PimParser;
.super Ljava/lang/Object;
.source "PimParser.java"


# instance fields
.field final mBarcode:Ljava/lang/String;

.field mContacts:Lcom/eventgenie/android/utils/qrcode/AbstractCardContacts;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "barcode"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/a_vcard/android/syncml/pim/PimParser;->mBarcode:Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1}, Lcom/a_vcard/android/syncml/pim/PimParser;->judgeParser(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method private judgeParser(Ljava/lang/String;)V
    .locals 1
    .param p1, "barcode"    # Ljava/lang/String;

    .prologue
    .line 21
    const-string v0, "BEGIN:VCARD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    const-string v0, "^ BARCODE: Type VCARD"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/eventgenie/android/utils/qrcode/VCardContacts;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/utils/qrcode/VCardContacts;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/PimParser;->mContacts:Lcom/eventgenie/android/utils/qrcode/AbstractCardContacts;

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    const-string v0, "MECARD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "^ BARCODE: Type MECARD"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/eventgenie/android/utils/qrcode/MeCardContacts;

    invoke-direct {v0, p1}, Lcom/eventgenie/android/utils/qrcode/MeCardContacts;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/PimParser;->mContacts:Lcom/eventgenie/android/utils/qrcode/AbstractCardContacts;

    goto :goto_0
.end method


# virtual methods
.method public getContact(I)Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/PimParser;->mContacts:Lcom/eventgenie/android/utils/qrcode/AbstractCardContacts;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/PimParser;->mContacts:Lcom/eventgenie/android/utils/qrcode/AbstractCardContacts;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/utils/qrcode/AbstractCardContacts;->getContact(I)Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;

    move-result-object v0

    goto :goto_0
.end method

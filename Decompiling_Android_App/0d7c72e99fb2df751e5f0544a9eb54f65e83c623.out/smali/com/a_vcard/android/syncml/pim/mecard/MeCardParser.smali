.class public Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser;
.super Ljava/lang/Object;
.source "MeCardParser.java"


# instance fields
.field private contacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;",
            ">;"
        }
    .end annotation
.end field

.field mParser:Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser_V1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser;->mParser:Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser_V1;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser;->contacts:Ljava/util/List;

    .line 36
    return-void
.end method

.method private judgeVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "vcardStr"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser_V1;

    invoke-direct {v0}, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser_V1;-><init>()V

    iput-object v0, p0, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser;->mParser:Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser_V1;

    .line 44
    return-void
.end method

.method private sanitiseMeCard(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "vcardStr"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser;->judgeVersion(Ljava/lang/String;)V

    .line 77
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 78
    const-string v0, "MECARD:"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 79
    const-string v0, "mecard:"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 81
    return-object p1
.end method


# virtual methods
.method public getContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser;->contacts:Ljava/util/List;

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "vcardStr"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a_vcard/android/syncml/pim/vcard/VCardException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser;->sanitiseMeCard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    const-string v6, ";;"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, "meCards":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 54
    .local v4, "meCard":Ljava/lang/String;
    iget-object v6, p0, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser;->mParser:Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser_V1;

    invoke-virtual {v6, v4, p2}, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser_V1;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/eventgenie/android/utils/qrcode/MeCardContact;

    move-result-object v1

    .line 56
    .local v1, "contact":Lcom/eventgenie/android/utils/qrcode/MeCardContact;
    if-nez v1, :cond_0

    .line 57
    const-string v6, "^ MECARD: Parse failed."

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 53
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_0
    iget-object v6, p0, Lcom/a_vcard/android/syncml/pim/mecard/MeCardParser;->contacts:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    .end local v1    # "contact":Lcom/eventgenie/android/utils/qrcode/MeCardContact;
    .end local v4    # "meCard":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    return v6
.end method

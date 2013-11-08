.class public Lcom/android/internal/telephony/WapPushParser;
.super Ljava/lang/Object;
.source "WapPushParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushParser$CONST_VALUE_TOKEN;
    }
.end annotation


# static fields
.field private static final ATTR_START_TAG_BASE:I = 0x5

.field private static final ATTR_VALUE_TOKEN:[Ljava/lang/String; = null

.field private static final ATTR_VALUE_TOKEN_BASE:I = 0x55

.field private static final OPERATION_PARSE_ATTR:I = 0x3

.field private static final OPERATION_PARSE_CONTENT:I = 0x4

.field private static final OPERATION_PARSE_END:I = 0x2

.field private static final OPERATION_PARSE_HEAD:I = 0x1

.field private static final SI_ATTR_START_MAPPING:[Ljava/lang/String; = null

.field public static final SI_TYPE:I = 0x1

.field private static final SL_ATTR_START_MAPPING:[Ljava/lang/String; = null

.field public static final SL_TYPE:I = 0x2

.field private static TAG:Ljava/lang/String;

.field private static charsetMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hasContent:Z

.field private mAction:Ljava/lang/String;

.field private mCharSet:I

.field private mContent:Ljava/lang/String;

.field private mCurrentAttrToken:I

.field private mEmbeddedStrTbl:[B

.field private mHyperLink:Ljava/lang/String;

.field private mInputStream:Ljava/io/InputStream;

.field private mPushType:I

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    const-string v0, "WAP_PUSH_Parser"

    sput-object v0, Lcom/android/internal/telephony/WapPushParser;->TAG:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, ".com/"

    aput-object v1, v0, v3

    const-string v1, ".edu/"

    aput-object v1, v0, v6

    const-string v1, ".net/"

    aput-object v1, v0, v7

    const-string v1, ".org/"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/WapPushParser;->ATTR_VALUE_TOKEN:[Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "action=signal-none"

    aput-object v1, v0, v3

    const-string v1, "action=signal-low"

    aput-object v1, v0, v6

    const-string v1, "action=signal-medium"

    aput-object v1, v0, v7

    const-string v1, "action=signal-high"

    aput-object v1, v0, v4

    const-string v1, "action=delete"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "created="

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "href="

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "href=http://"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "href=http://www."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "href=https://"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "href=https://www."

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "si_expires="

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "si_id="

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "class="

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/WapPushParser;->SI_ATTR_START_MAPPING:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "action=execute-low"

    aput-object v1, v0, v3

    const-string v1, "action=execute-high"

    aput-object v1, v0, v6

    const-string v1, "action=cache"

    aput-object v1, v0, v7

    const-string v1, "href="

    aput-object v1, v0, v4

    const-string v1, "href=http://"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "href=http://www."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "href=https://"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "href=https://www."

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/WapPushParser;->SL_ATTR_START_MAPPING:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/WapPushParser;->charsetMapping:Ljava/util/HashMap;

    sget-object v0, Lcom/android/internal/telephony/WapPushParser;->charsetMapping:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/telephony/WapPushParser;->charsetMapping:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "us-ascii"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/telephony/WapPushParser;->charsetMapping:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "iso-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/telephony/WapPushParser;->charsetMapping:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "iso-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/telephony/WapPushParser;->charsetMapping:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "iso-8859-3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/telephony/WapPushParser;->charsetMapping:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "iso-8859-4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/telephony/WapPushParser;->charsetMapping:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "iso-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/telephony/WapPushParser;->charsetMapping:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "iso-8859-6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/telephony/WapPushParser;->charsetMapping:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "iso-8859-7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/telephony/WapPushParser;->charsetMapping:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "iso-8859-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/telephony/WapPushParser;->charsetMapping:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "iso-8859-9"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/telephony/WapPushParser;->charsetMapping:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "shift_JIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/telephony/WapPushParser;->charsetMapping:Ljava/util/HashMap;

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/telephony/WapPushParser;->charsetMapping:Ljava/util/HashMap;

    const/16 v1, 0x7ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "big5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/telephony/WapPushParser;->charsetMapping:Ljava/util/HashMap;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "iso-10646-ucs-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/telephony/WapPushParser;->charsetMapping:Ljava/util/HashMap;

    const/16 v1, 0x3f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "utf-16"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushParser;->mAction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushParser;->mContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushParser;->mHyperLink:Ljava/lang/String;

    return-void
.end method

.method private Helper_IgnoreEntity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readInt32()I

    move-result v0

    .local v0, ignore:I
    return-void
.end method

.method private Helper_IgnoreSwitchPage()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readByte()I

    move-result v0

    .local v0, ignore:I
    return-void
.end method

.method private Helper_ReadOpaque()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readInt32()I

    move-result v1

    .local v1, length:I
    new-array v2, v1, [B

    .local v2, opaqueData:[B
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readByte()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private Helper_readByte()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/WapPushParser;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, nRet:I
    const-string v1, "yuyan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "helper_readbyte,nRet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Error: Unexpected EOF"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method private Helper_readInlineStr()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .local v4, length:I
    iget-object v6, p0, Lcom/android/internal/telephony/WapPushParser;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v5

    .local v5, nRet:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, inlineArraylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :goto_0
    if-eqz v5, :cond_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    new-instance v6, Lorg/xml/sax/SAXException;

    const-string v7, "Error: Unexpected EOF"

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .local v0, curValue:Ljava/lang/Byte;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Lcom/android/internal/telephony/WapPushParser;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v5

    goto :goto_0

    .end local v0           #curValue:Ljava/lang/Byte;
    :cond_1
    new-array v1, v4, [B

    .local v1, destData:[B
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/String;

    sget-object v6, Lcom/android/internal/telephony/WapPushParser;->charsetMapping:Ljava/util/HashMap;

    iget v8, p0, Lcom/android/internal/telephony/WapPushParser;->mCharSet:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v7, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v7
.end method

.method private Helper_readInt32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, nRet:I
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readByte()I

    move-result v1

    .local v1, nTemp:I
    and-int/lit8 v2, v1, 0x7f

    shl-int/lit8 v3, v0, 0x7

    or-int v0, v2, v3

    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_0

    return v0
.end method

.method private Helper_readStringTbl()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readInt32()I

    move-result v2

    .local v2, offset:I
    move v0, v2

    .local v0, end:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushParser;->mEmbeddedStrTbl:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sub-int v1, v0, v2

    .local v1, length:I
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/WapPushParser;->mEmbeddedStrTbl:[B

    sget-object v3, Lcom/android/internal/telephony/WapPushParser;->charsetMapping:Ljava/util/HashMap;

    iget v6, p0, Lcom/android/internal/telephony/WapPushParser;->mCharSet:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v5, v2, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v4
.end method

.method private parseAttr()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, attrVal:Ljava/lang/StringBuffer;
    iget v5, p0, Lcom/android/internal/telephony/WapPushParser;->mCurrentAttrToken:I

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readByte()I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/WapPushParser;->mCurrentAttrToken:I

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readByte()I

    move-result v2

    .local v2, token:I
    :goto_0
    const/16 v5, 0x80

    if-gt v2, v5, :cond_1

    if-eq v2, v4, :cond_1

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    if-eq v2, v3, :cond_1

    const/16 v5, 0x83

    if-eq v2, v5, :cond_1

    const/16 v5, 0xc3

    if-ne v2, v5, :cond_3

    :cond_1
    sparse-switch v2, :sswitch_data_0

    sget-object v5, Lcom/android/internal/telephony/WapPushParser;->ATTR_VALUE_TOKEN:[Ljava/lang/String;

    add-int/lit8 v6, v2, -0x55

    aget-object v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readByte()I

    move-result v2

    goto :goto_0

    :sswitch_0
    iget v3, p0, Lcom/android/internal/telephony/WapPushParser;->mCurrentAttrToken:I

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/WapPushParser;->storeAttr(ILjava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/internal/telephony/WapPushParser;->hasContent:Z

    if-nez v3, :cond_2

    move v3, v4

    :goto_2
    return v3

    :cond_2
    const/4 v3, 0x4

    goto :goto_2

    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readInlineStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readStringTbl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_ReadOpaque()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readInt32()I

    move-result v5

    int-to-char v1, v5

    .local v1, c:C
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .end local v1           #c:C
    :cond_3
    iget v4, p0, Lcom/android/internal/telephony/WapPushParser;->mCurrentAttrToken:I

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/WapPushParser;->storeAttr(ILjava/lang/String;)V

    iput v2, p0, Lcom/android/internal/telephony/WapPushParser;->mCurrentAttrToken:I

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_1
        0x83 -> :sswitch_2
        0xc3 -> :sswitch_3
    .end sparse-switch
.end method

.method private parseContent()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, attrVal:Ljava/lang/StringBuffer;
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readByte()I

    move-result v1

    .local v1, token:I
    :goto_0
    const/16 v2, 0x80

    if-gt v1, v2, :cond_0

    if-eq v1, v4, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/16 v2, 0x83

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc3

    if-ne v1, v2, :cond_1

    :cond_0
    sparse-switch v1, :sswitch_data_0

    sget-object v2, Lcom/android/internal/telephony/WapPushParser;->ATTR_VALUE_TOKEN:[Ljava/lang/String;

    add-int/lit16 v3, v1, -0x85

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readByte()I

    move-result v1

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/WapPushParser;->storeContent(Ljava/lang/String;)V

    return v4

    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readInlineStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readStringTbl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_ReadOpaque()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :sswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_IgnoreEntity()V

    goto :goto_1

    :sswitch_5
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_IgnoreSwitchPage()V

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Error: Exception when Parse Content"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x3 -> :sswitch_1
        0x83 -> :sswitch_2
        0xc3 -> :sswitch_3
    .end sparse-switch
.end method

.method private parseHead()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v9, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readByte()I

    move-result v10

    iput v10, p0, Lcom/android/internal/telephony/WapPushParser;->mVersion:I

    iget v10, p0, Lcom/android/internal/telephony/WapPushParser;->mPushType:I

    if-ne v10, v1, :cond_0

    move v4, v7

    .local v4, nCheckPID:I
    :goto_0
    iget v10, p0, Lcom/android/internal/telephony/WapPushParser;->mPushType:I

    if-ne v10, v1, :cond_1

    move v5, v8

    .local v5, nCheckToken:I
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readInt32()I

    move-result v7

    if-eq v7, v4, :cond_2

    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "Error: incorrect Public ID in SI Head"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v4           #nCheckPID:I
    .end local v5           #nCheckToken:I
    :cond_0
    move v4, v8

    goto :goto_0

    .restart local v4       #nCheckPID:I
    :cond_1
    move v5, v7

    goto :goto_1

    .restart local v5       #nCheckToken:I
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readInt32()I

    move-result v7

    iput v7, p0, Lcom/android/internal/telephony/WapPushParser;->mCharSet:I

    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readInt32()I

    move-result v6

    .local v6, stringTblLen:I
    new-array v7, v6, [B

    iput-object v7, p0, Lcom/android/internal/telephony/WapPushParser;->mEmbeddedStrTbl:[B

    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v3, v6, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/WapPushParser;->mEmbeddedStrTbl:[B

    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readByte()I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget v7, p0, Lcom/android/internal/telephony/WapPushParser;->mPushType:I

    if-ne v7, v1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readByte()I

    move-result v7

    const/16 v8, 0x45

    if-eq v7, v8, :cond_4

    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "Error: incorrect SI TAG in SI Head"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->Helper_readByte()I

    move-result v2

    .local v2, indication_Tag:I
    int-to-byte v7, v2

    and-int/lit8 v7, v7, 0x3f

    if-eq v7, v5, :cond_5

    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "Error: incorrect TAG in Head"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5
    and-int/lit16 v7, v2, 0x80

    if-eqz v7, :cond_6

    move v0, v1

    .local v0, bHaveAttr:Z
    :goto_3
    and-int/lit8 v7, v2, 0x40

    if-eqz v7, :cond_7

    .local v1, bHaveContent:Z
    :goto_4
    iput-boolean v1, p0, Lcom/android/internal/telephony/WapPushParser;->hasContent:Z

    if-eqz v0, :cond_8

    const/4 v7, 0x3

    :goto_5
    return v7

    .end local v0           #bHaveAttr:Z
    .end local v1           #bHaveContent:Z
    :cond_6
    move v0, v9

    goto :goto_3

    .restart local v0       #bHaveAttr:Z
    :cond_7
    move v1, v9

    goto :goto_4

    .restart local v1       #bHaveContent:Z
    :cond_8
    if-eqz v1, :cond_9

    const/4 v7, 0x4

    goto :goto_5

    :cond_9
    new-instance v7, Lorg/xml/sax/SAXException;

    const-string v8, "Error: TAG have none attr and content"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private storeAttr(ILjava/lang/String;)V
    .locals 5
    .parameter "attr"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    iget v3, p0, Lcom/android/internal/telephony/WapPushParser;->mPushType:I

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/android/internal/telephony/WapPushParser;->SI_ATTR_START_MAPPING:[Ljava/lang/String;

    array-length v3, v3

    :goto_0
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v3, 0x5

    .local v2, attrValidMax:I
    if-le p1, v2, :cond_1

    new-instance v3, Lorg/xml/sax/SAXException;

    const-string v4, "Error: unSupported TAG, discard"

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v2           #attrValidMax:I
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/WapPushParser;->SL_ATTR_START_MAPPING:[Ljava/lang/String;

    array-length v3, v3

    goto :goto_0

    .restart local v2       #attrValidMax:I
    :cond_1
    iget v3, p0, Lcom/android/internal/telephony/WapPushParser;->mPushType:I

    if-ne v3, v4, :cond_3

    sget-object v1, Lcom/android/internal/telephony/WapPushParser;->SI_ATTR_START_MAPPING:[Ljava/lang/String;

    .local v1, attrStartTemp:[Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, -0x5

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, attrFullVal:Ljava/lang/String;
    const-string v3, "action="

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/String;

    const-string v4, "action="

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/WapPushParser;->mAction:Ljava/lang/String;

    :cond_2
    :goto_2
    return-void

    .end local v0           #attrFullVal:Ljava/lang/String;
    .end local v1           #attrStartTemp:[Ljava/lang/String;
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/WapPushParser;->SL_ATTR_START_MAPPING:[Ljava/lang/String;

    goto :goto_1

    .restart local v0       #attrFullVal:Ljava/lang/String;
    .restart local v1       #attrStartTemp:[Ljava/lang/String;
    :cond_4
    const-string v3, "href="

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/String;

    const-string v4, "href="

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/WapPushParser;->mHyperLink:Ljava/lang/String;

    goto :goto_2
.end method

.method private storeContent(Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushParser;->mContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushParser;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/WapPushParser;->mAction:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/WapPushParser;->mAction:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushParser;->mContent:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/WapPushParser;->mContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/WapPushParser;->mContent:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHyperLink()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushParser;->mHyperLink:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/WapPushParser;->mHyperLink:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/WapPushParser;->mHyperLink:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/io/InputStream;I)V
    .locals 4
    .parameter "inputstream"
    .parameter "pushType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    iput-object p1, p0, Lcom/android/internal/telephony/WapPushParser;->mInputStream:Ljava/io/InputStream;

    iput p2, p0, Lcom/android/internal/telephony/WapPushParser;->mPushType:I

    const/4 v0, 0x1

    .local v0, nextOperation:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/WapPushParser;->mCurrentAttrToken:I

    iget v1, p0, Lcom/android/internal/telephony/WapPushParser;->mPushType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/WapPushParser;->mPushType:I

    if-eq v1, v3, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Error: unsupport Push Type"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->parseHead()I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->parseAttr()I

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/WapPushParser;->parseContent()I

    move-result v0

    goto :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

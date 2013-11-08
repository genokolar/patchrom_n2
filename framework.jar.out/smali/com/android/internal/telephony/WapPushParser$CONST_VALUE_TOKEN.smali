.class public Lcom/android/internal/telephony/WapPushParser$CONST_VALUE_TOKEN;
.super Ljava/lang/Object;
.source "WapPushParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WapPushParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CONST_VALUE_TOKEN"
.end annotation


# static fields
.field public static final END:I = 0x1

.field public static final ENTITY:I = 0x2

.field public static final INDICATION_TAG:I = 0x6

.field public static final OPAQUE:I = 0xc3

.field public static final SI_PUB_ID:I = 0x5

.field public static final SI_TAG_CONTENT_ONLY:I = 0x45

.field public static final SL_PUB_ID:I = 0x6

.field public static final SL_TAG:I = 0x5

.field public static final STRING_INLINE:I = 0x3

.field public static final STR_TBL_REF:I = 0x83

.field public static final SWITCH_PAGE:I


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/WapPushParser;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/WapPushParser;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushParser$CONST_VALUE_TOKEN;->this$0:Lcom/android/internal/telephony/WapPushParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

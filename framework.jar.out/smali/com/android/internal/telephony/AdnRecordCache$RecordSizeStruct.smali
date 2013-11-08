.class Lcom/android/internal/telephony/AdnRecordCache$RecordSizeStruct;
.super Ljava/lang/Object;
.source "AdnRecordCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/AdnRecordCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecordSizeStruct"
.end annotation


# instance fields
.field simRecordLength:I

.field simRecordMaxSize:I

.field final synthetic this$0:Lcom/android/internal/telephony/AdnRecordCache;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/AdnRecordCache;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecordCache$RecordSizeStruct;->this$0:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/AdnRecordCache$RecordSizeStruct;->simRecordLength:I

    iput v0, p0, Lcom/android/internal/telephony/AdnRecordCache$RecordSizeStruct;->simRecordMaxSize:I

    return-void
.end method


# virtual methods
.method reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "AdnRecordCache"

    const-string v1, "RecordSizeStruct reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/internal/telephony/AdnRecordCache$RecordSizeStruct;->simRecordLength:I

    iput v2, p0, Lcom/android/internal/telephony/AdnRecordCache$RecordSizeStruct;->simRecordMaxSize:I

    return-void
.end method

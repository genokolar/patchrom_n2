.class final enum Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;
.super Ljava/lang/Enum;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FormatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

.field public static final enum All:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

.field public static final enum None:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

.field public static final enum OnlyEmmc:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

.field public static final enum OnlySD:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    const-string v1, "All"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->All:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    const-string v1, "OnlyEmmc"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->OnlyEmmc:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    const-string v1, "OnlySD"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->OnlySD:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    const-string v1, "None"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->None:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->All:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->OnlyEmmc:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->OnlySD:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->None:Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->$VALUES:[Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->$VALUES:[Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    invoke-virtual {v0}, [Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/os/storage/ExternalStorageFormatter$FormatType;

    return-object v0
.end method

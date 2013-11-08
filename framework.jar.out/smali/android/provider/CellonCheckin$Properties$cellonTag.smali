.class public final enum Landroid/provider/CellonCheckin$Properties$cellonTag;
.super Ljava/lang/Enum;
.source "CellonCheckin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CellonCheckin$Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "cellonTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/provider/CellonCheckin$Properties$cellonTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/provider/CellonCheckin$Properties$cellonTag;

.field public static final enum TEST:Landroid/provider/CellonCheckin$Properties$cellonTag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    new-instance v0, Landroid/provider/CellonCheckin$Properties$cellonTag;

    const-string v1, "TEST"

    invoke-direct {v0, v1, v2}, Landroid/provider/CellonCheckin$Properties$cellonTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/CellonCheckin$Properties$cellonTag;->TEST:Landroid/provider/CellonCheckin$Properties$cellonTag;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/provider/CellonCheckin$Properties$cellonTag;

    sget-object v1, Landroid/provider/CellonCheckin$Properties$cellonTag;->TEST:Landroid/provider/CellonCheckin$Properties$cellonTag;

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/CellonCheckin$Properties$cellonTag;->$VALUES:[Landroid/provider/CellonCheckin$Properties$cellonTag;

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

.method public static valueOf(Ljava/lang/String;)Landroid/provider/CellonCheckin$Properties$cellonTag;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/provider/CellonCheckin$Properties$cellonTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/provider/CellonCheckin$Properties$cellonTag;

    return-object v0
.end method

.method public static values()[Landroid/provider/CellonCheckin$Properties$cellonTag;
    .locals 1

    .prologue
    sget-object v0, Landroid/provider/CellonCheckin$Properties$cellonTag;->$VALUES:[Landroid/provider/CellonCheckin$Properties$cellonTag;

    invoke-virtual {v0}, [Landroid/provider/CellonCheckin$Properties$cellonTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/provider/CellonCheckin$Properties$cellonTag;

    return-object v0
.end method

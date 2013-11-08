.class Lcom/android/server/MountService$4;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$avail:Z


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iput-boolean p2, p0, Lcom/android/server/MountService$4;->val$avail:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/server/MountService$4;->val$avail:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/MountService;->setUsbMassStorageEnabled(Z)V

    :cond_0
    return-void
.end method

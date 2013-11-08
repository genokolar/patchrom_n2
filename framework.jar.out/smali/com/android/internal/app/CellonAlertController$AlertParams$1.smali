.class Lcom/android/internal/app/CellonAlertController$AlertParams$1;
.super Landroid/content/BroadcastReceiver;
.source "CellonAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/CellonAlertController$AlertParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;


# direct methods
.method constructor <init>(Lcom/android/internal/app/CellonAlertController$AlertParams;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$1;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "CellonAlertController"

    const-string v2, "onReceive - com.cellon.action.MUSIC_STATE_STOP"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$1;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    #getter for: Lcom/android/internal/app/CellonAlertController$AlertParams;->state:I
    invoke-static {v1}, Lcom/android/internal/app/CellonAlertController$AlertParams;->access$800(Lcom/android/internal/app/CellonAlertController$AlertParams;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$1;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->playIndicator:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const-string v1, "CellonAlertController"

    const-string v2, "onReceive - setImageResource: play_indicator_stop"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$AlertParams$1;->this$0:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/CellonAlertController$AlertParams;->playIndicator:Landroid/widget/ImageView;

    const v2, 0x108044e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.class Lcom/android/internal/app/CellonAlertController$1;
.super Ljava/lang/Object;
.source "CellonAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/CellonAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/CellonAlertController;


# direct methods
.method constructor <init>(Lcom/android/internal/app/CellonAlertController;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/CellonAlertController$1;->this$0:Lcom/android/internal/app/CellonAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v0, 0x0

    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$1;->this$0:Lcom/android/internal/app/CellonAlertController;

    #getter for: Lcom/android/internal/app/CellonAlertController;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/internal/app/CellonAlertController;->access$000(Lcom/android/internal/app/CellonAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$1;->this$0:Lcom/android/internal/app/CellonAlertController;

    #getter for: Lcom/android/internal/app/CellonAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/CellonAlertController;->access$100(Lcom/android/internal/app/CellonAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$1;->this$0:Lcom/android/internal/app/CellonAlertController;

    #getter for: Lcom/android/internal/app/CellonAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/CellonAlertController;->access$100(Lcom/android/internal/app/CellonAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$1;->this$0:Lcom/android/internal/app/CellonAlertController;

    #getter for: Lcom/android/internal/app/CellonAlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/app/CellonAlertController;->access$700(Lcom/android/internal/app/CellonAlertController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/app/CellonAlertController$1;->this$0:Lcom/android/internal/app/CellonAlertController;

    #getter for: Lcom/android/internal/app/CellonAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v3}, Lcom/android/internal/app/CellonAlertController;->access$600(Lcom/android/internal/app/CellonAlertController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$1;->this$0:Lcom/android/internal/app/CellonAlertController;

    #getter for: Lcom/android/internal/app/CellonAlertController;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/internal/app/CellonAlertController;->access$200(Lcom/android/internal/app/CellonAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$1;->this$0:Lcom/android/internal/app/CellonAlertController;

    #getter for: Lcom/android/internal/app/CellonAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/CellonAlertController;->access$300(Lcom/android/internal/app/CellonAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$1;->this$0:Lcom/android/internal/app/CellonAlertController;

    #getter for: Lcom/android/internal/app/CellonAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/CellonAlertController;->access$300(Lcom/android/internal/app/CellonAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$1;->this$0:Lcom/android/internal/app/CellonAlertController;

    #getter for: Lcom/android/internal/app/CellonAlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/internal/app/CellonAlertController;->access$400(Lcom/android/internal/app/CellonAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$1;->this$0:Lcom/android/internal/app/CellonAlertController;

    #getter for: Lcom/android/internal/app/CellonAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/CellonAlertController;->access$500(Lcom/android/internal/app/CellonAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertController$1;->this$0:Lcom/android/internal/app/CellonAlertController;

    #getter for: Lcom/android/internal/app/CellonAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/CellonAlertController;->access$500(Lcom/android/internal/app/CellonAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

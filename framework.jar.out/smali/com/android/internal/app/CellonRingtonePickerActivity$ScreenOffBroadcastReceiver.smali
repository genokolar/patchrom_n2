.class public Lcom/android/internal/app/CellonRingtonePickerActivity$ScreenOffBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CellonRingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/CellonRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScreenOffBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/CellonRingtonePickerActivity;


# direct methods
.method protected constructor <init>(Lcom/android/internal/app/CellonRingtonePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity$ScreenOffBroadcastReceiver;->this$0:Lcom/android/internal/app/CellonRingtonePickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "CellonRingtonePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive- action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity$ScreenOffBroadcastReceiver;->this$0:Lcom/android/internal/app/CellonRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/CellonRingtonePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/CellonRingtonePickerActivity$ScreenOffBroadcastReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/CellonRingtonePickerActivity$ScreenOffBroadcastReceiver$1;-><init>(Lcom/android/internal/app/CellonRingtonePickerActivity$ScreenOffBroadcastReceiver;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const-string v1, "CellonRingtonePickerActivity"

    const-string v2, "this widget will finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity$ScreenOffBroadcastReceiver;->this$0:Lcom/android/internal/app/CellonRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/CellonRingtonePickerActivity;->finish()V

    :cond_0
    return-void
.end method

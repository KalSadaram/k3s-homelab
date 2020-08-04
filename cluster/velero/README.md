# velero

Cluster backup solution

* [velero.yaml](velero/velero.yaml)


```
velero restore create RESTORE_NAME --from-backup BACKUP_NAME --include-namespaces ns1,ns2
```

Backup just nzbget
```
velero create restore unifi --from-backup velero-twice-daily-backup-20200716060032 --include-resources persistentVolume,persistentVolumeClaim --selector "app.kubernetes.io/instance=unifi" --wait
```
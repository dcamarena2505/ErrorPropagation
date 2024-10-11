function installErrorPropagation()
    % Obtener la ruta de la carpeta del script
    folderPath = fileparts(mfilename('fullpath'));
    % Adicionar la ruta del paquete a MATLAB
    addpath(fullfile(folderPath, 'functions'));
    % Guardar la ruta de forma permanente
    savepath;
    disp('ErrorPropagation package installed successfully.');
end


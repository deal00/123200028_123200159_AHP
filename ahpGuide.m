function varargout = ahpGuide(varargin)
% AHPGUIDE MATLAB code for ahpGuide.fig
%      AHPGUIDE, by itself, creates a new AHPGUIDE or raises the existing
%      singleton*.
%
%      H = AHPGUIDE returns the handle to a new AHPGUIDE or the handle to
%      the existing singleton*.
%
%      AHPGUIDE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AHPGUIDE.M with the given input arguments.
%
%      AHPGUIDE('Property','Value',...) creates a new AHPGUIDE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ahpGuide_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ahpGuide_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ahpGuide

% Last Modified by GUIDE v2.5 24-May-2022 23:48:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ahpGuide_OpeningFcn, ...
                   'gui_OutputFcn',  @ahpGuide_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before ahpGuide is made visible.
function ahpGuide_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ahpGuide (see VARARGIN)

% Choose default command line output for ahpGuide
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ahpGuide wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ahpGuide_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in show.
function show_Callback(hObject, eventdata, handles)
% hObject    handle to show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[num,txt,tabeldata] = xlsread('data.xlsx','B3:F8');

set(handles.uitable3,'data',tabeldata)


% --- Executes on button press in hasil.
function hasil_Callback(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[num,txt,tabeldata] = xlsread('data.xlsx','K69:L74');

set(handles.uitable4,'data',tabeldata)



% --- Executes on button press in hasilEK.
function hasilEK_Callback(hObject, eventdata, handles)
% hObject    handle to hasilEK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[num,txt,tabeldata] = xlsread('data.xlsx','N12:N16');

set(handles.uitable5,'data',tabeldata)


% --- Executes on button press in ev.
function ev_Callback(hObject, eventdata, handles)
% hObject    handle to ev (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[num,txt,tabeldata] = xlsread('data.xlsx','D70:I74');

set(handles.uitable2,'data',tabeldata)



% --- Executes on button press in nek.
function nek_Callback(hObject, eventdata, handles)
% hObject    handle to nek (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[num,txt,tabeldata] = xlsread('data.xlsx','H12:L16');

set(handles.uitable1,'data',tabeldata)
